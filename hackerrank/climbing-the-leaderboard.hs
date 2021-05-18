module Main where

import Data.Array (Array, listArray, (!))
import Data.List (group)

arrayFromList :: [Int] -> Array Int Int
arrayFromList xs = listArray (0, n) xs
  where
    n = length xs - 1

arrayScoreInterval :: Array Int Int -> Int -> (Int, Int)
arrayScoreInterval arr x = (arr ! x, arr ! (x + 1))

searchInsertIndex :: Array Int Int -> Int -> Int -> Int
searchInsertIndex arr start x
  | start == n + 1 = start
  | x > arr ! start = 0
  | arr ! n > x = n + 1
  | otherwise = go start n
  where
    n = length arr - 1
    go low high
      | a == x = mid
      | a > x && x > b = mid + 1
      | otherwise = if x > a then go low mid else go (mid+1) high
      where
        mid = (low + high) `quot` 2
        (a, b) = arrayScoreInterval arr mid

solve :: [Int] -> [Int] -> [Int]
solve ranks = go ranks' 0
  where
    ranks' = arrayFromList $ map head $ group ranks
    go _ _ [] = []
    go rs start (x : xs) = (index + 1) : go rs ni xs
      where
        index = searchInsertIndex rs start x
        ni = maximum [0, index-1]

readIntList :: IO [Int]
readIntList = map read . words <$> getLine

main :: IO ()
main = do
  _ <- readIntList
  ranks <- readIntList
  _ <- readIntList
  player <- readIntList
  putStrLn $ unlines $ map show $ reverse (solve ranks (reverse player))
