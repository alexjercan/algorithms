module Main where

import Data.List (group, sort)

solve :: [Int] -> Int
solve =
  foldr ((+) . flip div 2 . length) 0
    . group
    . sort

readIntList :: IO [Int]
readIntList = map read . words <$> getLine

main :: IO ()
main = do
  _ <- readIntList
  xs <- readIntList
  print $ solve xs
