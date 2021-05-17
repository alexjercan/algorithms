module Main where

bActual :: Int -> [Int] -> Int
bActual i xs = (sum xs - xs !! i) `div` 2

solve :: Int -> Int -> [Int] -> String
solve b i xs
  | b == bActual i xs = "Bon Appetit"
  | otherwise = show $ b - bActual i xs

readIntList :: IO [Int]
readIntList = do map read . words <$> getLine

main :: IO ()
main = do
  [_, i] <- readIntList
  xs <- readIntList
  [b] <- readIntList
  putStrLn $ solve b i xs