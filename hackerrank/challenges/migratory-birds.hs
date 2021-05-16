module Main where

import Data.List ( minimumBy, sort, group )

birdOrd :: [Int] -> [Int] -> Ordering
birdOrd [] _ = GT
birdOrd _ [] = LT
birdOrd xs@(x:_) ys@(y:_)
  | length xs == length ys = compare x y
  | otherwise = compare (length ys) (length xs)

solve :: [Int] -> Int
solve = head . minimumBy birdOrd . group . sort

readIntList :: IO [Int]
readIntList = do map read . words <$> getLine

main :: IO ()
main = do
  _ <- readIntList
  xs <- readIntList
  print (solve xs)