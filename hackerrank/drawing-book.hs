module Main where

solve :: Int -> Int -> Int
solve n p = min pStart pEnd
  where pStart = p `div` 2
        pEnd = n `div` 2 - pStart

readIntList :: IO [Int]
readIntList = map read . words <$> getLine

main :: IO ()
main = do
  [n] <- readIntList
  [p] <- readIntList
  print $ solve n p