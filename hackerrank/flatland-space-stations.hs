module Main where

import           Data.List (sort)

maxDistance :: [Int] -> Int
maxDistance [] = 0
maxDistance xs = (`div` 2) $ maximum xs

solve :: [Int] -> Int -> Int
solve arr n = opts $ sort arr
  where
    opts [] = 0
    opts xs'@(x:xs) = maximum [x, maxDistance $ zipWith (-) xs xs', n - 1 - last xs']

readIntList :: IO [Int]
readIntList = map read . words <$> getLine

main :: IO ()
main = do
  [n, _] <- readIntList
  arr <- readIntList
  print (solve arr n)
