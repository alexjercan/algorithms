module Main where

import           Control.Monad (replicateM)

toRight :: Int -> (Int, Int) -> [(Int, Int)] -> Int
toRight n (i, j) xs = minimum $ (n - j) : map (\(_, y) -> y - j - 1) (filter (\(x, y) -> i == x && y > j) xs)

toBottomRight :: Int -> (Int, Int) -> [(Int, Int)] -> Int
toBottomRight n (i, j) xs = minimum $ min (n - j) (i - 1) : map (\(_, y) -> y - j - 1) (filter (\(x, y) -> i - x == y - j && y > j && x < i) xs)

toBottom :: Int -> (Int, Int) -> [(Int, Int)] -> Int
toBottom n (i, j) xs = minimum $ (i - 1) : map (\(x, _) -> i - x - 1) (filter (\(x, y) -> y == j && x < i) xs)

toBottomLeft :: Int -> (Int, Int) -> [(Int, Int)] -> Int
toBottomLeft n (i, j) xs = minimum $ min (j - 1) (i - 1) : map (\(_, y) -> j - y - 1) (filter (\(x, y) -> i - x == j - y && y < j && x < i) xs)

toLeft :: Int -> (Int, Int) -> [(Int, Int)] -> Int
toLeft n (i, j) xs = minimum $ (j - 1) : map (\(_, y) -> j - y - 1) (filter (\(x, y) -> i == x && y < j) xs)

toUpperLeft :: Int -> (Int, Int) -> [(Int, Int)] -> Int
toUpperLeft n (i, j) xs = minimum $ min (j - 1) (n - i) : map (\(_, y) -> j - y - 1) (filter (\(x, y) -> j - y == x - i && y < j && x > i) xs)

toUpper :: Int -> (Int, Int) -> [(Int, Int)] -> Int
toUpper n (i, j) xs = minimum $ (n - i) : map (\(x, _) -> x - i - 1) (filter (\(x, y) -> j == y && x > i) xs)

toUpperRight :: Int -> (Int, Int) -> [(Int, Int)] -> Int
toUpperRight n (i, j) xs = minimum $ min (n - j) (n - i) : map (\(_, y) -> y - j - 1) (filter (\(x, y) -> x - i == y - j && y > j && x > i) xs)

solve :: Int -> (Int, Int) -> [(Int, Int)] -> Int
solve n (i, j) xs = toRight n (i, j) xs
                  + toBottomRight n (i, j) xs
                  + toBottom n (i, j) xs
                  + toBottomLeft n (i, j) xs
                  + toLeft n (i, j) xs
                  + toUpperLeft n (i, j) xs
                  + toUpper n (i, j) xs
                  + toUpperRight n (i, j) xs

readIntList :: IO [Int]
readIntList = map read . words <$> getLine

readIntTuple :: IO (Int, Int)
readIntTuple = do
  [x, y] <- readIntList
  return (x, y)

main :: IO ()
main = do
  [n, k] <- readIntList
  [i, j] <- readIntList
  xs <- replicateM k readIntTuple
  print (solve n (i, j) xs)
