module Main where

import Data.List ( minimumBy, sort, group )
import Data.Function (on)

solve :: [Int] -> Int
solve = head . minimumBy (flip compare `on` length) . group . sort

readIntList :: IO [Int]
readIntList = do map read . words <$> getLine

main :: IO ()
main = do
  _ <- readIntList
  xs <- readIntList
  print (solve xs)