module Main where

import Data.List (sort)

parse :: String -> [Int]
parse = map read . words . last . lines

solve :: [Int] -> Int
solve = snd . foldr (\x (p, s) -> (p*2, p*x + s))  (1, 0) . sort

main :: IO ()
main = interact $ show . solve . parse
