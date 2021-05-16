module Main where

import Data.List (foldl)

iter :: (Int, Int, Int, Int) -> Int -> (Int, Int, Int, Int)
iter m@(maxS, minS, cntMax, cntMin) s
  | s < minS = (maxS, s, cntMax, cntMin + 1)
  | s > maxS = (s, minS, cntMax + 1, cntMin)
  | otherwise = m

solve :: [Int] -> [Int]
solve [] = [0, 0]
solve (x:xs) = solution $ foldl iter (x, x, 0, 0) xs
  where solution (_, _, c1, c2) = [c1, c2]

main :: IO ()
main = interact $ unwords . map show . solve . map read . words . head . tail . lines