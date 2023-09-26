module Main where
import Data.Char (digitToInt, intToDigit)

parse :: String -> [[Int]]
parse = map (map digitToInt) . tail . lines

border :: [[Int]] -> Int -> Int -> Bool
border xs i j = i == 0 || j == 0 || i == length xs - 1 || j == length (head xs) - 1

cavity :: [[Int]] -> Int -> Int -> Bool
cavity xs i j = (xs !! i) !! j > maximum [xs !! (i-1) !! j, xs !! i !! (j-1), xs !! i !! (j+1), xs !! (i+1) !! j]

mask :: [[Int]] -> Int -> Int -> Char
mask xs i j = if not (border xs i j) && cavity xs i j then 'X' else intToDigit ((xs !! i) !! j)

solve :: String -> String
solve input = unlines $ map (\i -> map (mask xs i) [0 .. length (xs !! i) - 1]) [0 .. length xs - 1]
    where xs = parse input

main :: IO ()
main = interact solve
