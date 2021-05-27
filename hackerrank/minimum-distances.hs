module Main where

import           Data.List (elemIndex)

minimumDistance :: [Int] -> Int -> Int
minimumDistance [] n = n
minimumDistance (x:xs) n = case elemIndex x xs of
  Just i  -> minimumDistance xs $ min (i + 1) n
  Nothing -> minimumDistance xs n

solve :: [Int] -> Int
solve xs = if m >= n then -1 else m
  where m = minimumDistance xs n
        n = length xs

readIntList :: IO [Int]
readIntList = map read . words <$> getLine

main :: IO ()
main = do
  _ <- readIntList
  xs <- readIntList
  print (solve xs)
