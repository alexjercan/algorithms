module Main where

indexOf :: [Int] -> Int -> Int
indexOf [] _ = 0
indexOf (x:xs) y
  | x == y = 0
  | otherwise = 1 + indexOf xs y

solve :: [Int] -> [Int]
solve xs = map ((+1) . indexOf xs . (+1) . indexOf xs) [1 .. n]
  where n = length xs

readIntList :: IO [Int]
readIntList = map read . words <$> getLine

main :: IO ()
main = do
  _ <- readIntList
  xs <- readIntList
  putStrLn $ unlines $ map show $ solve xs
