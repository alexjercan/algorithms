module Main where

solve :: Int -> [Int] -> Int
solve _ [] = 0
solve d (x:xs)
  | x + d `elem` xs && x + 2 * d `elem` xs = 1 + solve d xs
  | otherwise = solve d xs

readIntList :: IO [Int]
readIntList = map read . words <$> getLine

main :: IO ()
main = do
  [_, d] <- readIntList
  xs <- readIntList
  print (solve d xs)
