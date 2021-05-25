module Main where

import           Data.List (transpose)

split :: Int -> String -> [String]
split _ [] = []
split n xs = take n xs : split n (drop n xs)

solve :: String -> [String]
solve xs = transpose $ split c xs
  where n = length xs
        c = ceiling $ sqrt (fromIntegral n :: Float)

main :: IO ()
main = interact $ unwords . solve . concat . words
