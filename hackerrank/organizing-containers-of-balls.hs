module Main where

import           Control.Monad (replicateM)
import           Data.List     (sort, transpose)

solve :: [[Int]] -> Bool
solve xs = sort capacities == sort types
  where
    capacities = map sum (transpose xs)
    types = map sum xs

boolToString :: Bool -> String
boolToString True  = "Possible"
boolToString False = "Impossible"

readIntList :: IO [Int]
readIntList = map read . words <$> getLine

readInput :: IO [[Int]]
readInput = do
  [n] <- readIntList
  replicateM n readIntList

main :: IO ()
main = do
  [q] <- readIntList
  xs <- replicateM q readInput
  putStrLn $ unlines $ map (boolToString . solve) xs
