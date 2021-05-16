module Main where

import Data.List (tails)

pairs :: Int -> [Int] -> Int
pairs _ [] = 0
pairs k (x : xs) =
  length $
    filter ((== 0) . (`mod` k)) $
      map (+ x) xs

solve :: Int -> [Int] -> Int
solve k xs = sum $ map (pairs k) $ tails xs

readIntList :: IO [Int]
readIntList = do map read . words <$> getLine

main :: IO ()
main = do
  [_, k] <- readIntList
  xs <- readIntList
  print (solve k xs)