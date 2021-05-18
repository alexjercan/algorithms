module Main where

import Data.List ( group, sort )

difference :: [Int] -> Bool
difference [] = False
difference xs
  | maximum xs - minimum xs <= 1 = True
  | otherwise = False

subsequencesOfTwo :: [[a]] -> [[a]]
subsequencesOfTwo [] = []
subsequencesOfTwo (x : xs) = map (++ x) xs ++ subsequencesOfTwo xs

subsequencesOfTwoOrLess :: [[a]] -> [[a]]
subsequencesOfTwoOrLess [] = []
subsequencesOfTwoOrLess xs = xs ++ subsequencesOfTwo xs

solve :: [Int] -> Int
solve = maximum . map length . filter difference . subsequencesOfTwoOrLess . group . sort

main :: IO ()
main = interact $ show . solve . tail . map read . words
