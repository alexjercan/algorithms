module Main where

import Control.Monad ( replicateM )

solveOne :: (Int, Int, Int) -> Int
solveOne (n, m, s)
  | l > n = l `mod` n
  | otherwise = l
  where c = m `mod` n
        c' = if c == 0 then n else c
        l = c' + s - 1

solve :: [(Int, Int, Int)] -> [Int]
solve = map solveOne

readIntList :: IO [Int]
readIntList = map read . words <$> getLine

readInput :: IO (Int, Int, Int)
readInput = do
  xs <- readIntList
  return (head xs, xs !! 1, xs !! 2)

main :: IO ()
main = do
  [n] <- readIntList
  xs <- replicateM n readInput
  putStrLn $ unlines $ map show $ solve xs
