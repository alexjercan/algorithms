module Main where

import           Data.List (group, sort)

solve :: [Int] -> Int
solve xs = length xs - maximum (map length (group $ sort xs))

readIntList :: IO [Int]
readIntList = map read . words <$> getLine

main :: IO ()
main = do
  _ <- readIntList
  xs <- readIntList
  print (solve xs)
