module Main where

import Control.Monad (liftM2)
import Data.List (sortBy)
import Data.Maybe (fromMaybe, listToMaybe)

solve :: Int -> [Int] -> [Int] -> Int
solve b ks ds =
  fromMaybe (-1)
    $ listToMaybe
    $ sortBy (flip compare)
    $ filter (<= b)
    $ liftM2 (+) ks ds

readIntList :: IO [Int]
readIntList = do map read . words <$> getLine

main :: IO ()
main = do
  [b, _, _] <- readIntList
  ks <- readIntList
  ds <- readIntList
  print $ solve b ks ds