module Main where

import Data.List (groupBy)

delta :: Char -> Int
delta 'U' = 1
delta 'D' = -1
delta _ = 0

solve :: String -> Int
solve =
  length
    . filter (all (< 0))
    . groupBy (\x y -> x /= 0 && y /= 0)
    . scanl (+) 0
    . map delta

readIntList :: IO [Int]
readIntList = do map read . words <$> getLine

main :: IO ()
main = do
  _ <- readIntList
  xs <- getLine
  print $ solve xs