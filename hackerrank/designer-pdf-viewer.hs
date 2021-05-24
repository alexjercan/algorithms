module Main where

import           Data.Char (ord)

charToIndex :: Char -> Int
charToIndex c = ord c - ord 'a'

solve :: [Int] -> String -> Int
solve hs xs = n * m
  where n = length xs
        m = maximum $ map ((hs !!) . charToIndex) xs

readIntList :: IO [Int]
readIntList = map read . words <$> getLine

main :: IO ()
main = do
  hs <- readIntList
  xs <- getLine
  print (solve hs xs)
