module Main where

import           Control.Monad (replicateM)

solve :: (Int, Int, Int) -> Int
solve (n, c, m) = go (n `div` c) 0 0
  where go b w e
          | w + b < m = e + b
          | otherwise = go ((w + b) `div` m) ((w + b) `mod` m) (e + b)

readIntList :: IO [Int]
readIntList = map read . words <$> getLine

readInput :: IO (Int, Int, Int)
readInput = do
  [n, c, m] <- readIntList
  return (n, c, m)

main :: IO ()
main = do
  [q] <- readIntList
  xs <- replicateM q readInput
  putStrLn $ unlines $ map (show . solve) xs
