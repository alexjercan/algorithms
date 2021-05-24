module Main where

data GrowthSeason = Spring | Summer

solveOne :: Int -> GrowthSeason -> Int -> Int
solveOne h _ 0      = h
solveOne h Spring n = solveOne (2 * h) Summer (n - 1)
solveOne h Summer n = solveOne (h + 1) Spring (n - 1)

solve :: [Int] -> [Int]
solve = map (solveOne 1 Spring)

main :: IO ()
main = interact $ unlines . map show . solve . map read . tail . lines
