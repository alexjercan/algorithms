module Main where

import           Control.Monad (replicateM)

slice :: (Int, Int) -> [a] -> [a]
slice (from, to) = take (to - from + 1) . drop from

solve :: (Int, Int) -> [Int] -> Int
solve p = minimum . slice p

readIntList :: IO [Int]
readIntList = map read . words <$> getLine

readInput :: IO (Int, Int)
readInput = do
  [i, j] <- readIntList
  return (i, j)

main :: IO ()
main = do
  [_, q] <- readIntList
  xs <- readIntList
  qs <- replicateM q readInput
  putStrLn $ unlines $ map (show . flip solve xs) qs
