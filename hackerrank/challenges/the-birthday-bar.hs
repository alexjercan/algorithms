module Main where

import Data.List (tails)

solve :: Int -> Int -> [Int] -> Int
solve d m = length . filter (== d) . map (sum . take m) . filter ((>= m) . length) . tails

readIntList :: IO [Int]
readIntList = do map read . words <$> getLine

main :: IO ()
main = do
  _ <- readIntList
  xs <- readIntList
  [d, m] <- readIntList
  print (solve d m xs)
