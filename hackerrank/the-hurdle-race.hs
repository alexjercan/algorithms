module Main where

solve :: Int -> [Int] -> Int
solve k xs
  | m > k = m - k
  | otherwise = 0
  where m = maximum xs

readIntList :: IO [Int]
readIntList = map read . words <$> getLine

main :: IO ()
main = do
  [_, k] <- readIntList
  xs <- readIntList
  print (solve k xs)
