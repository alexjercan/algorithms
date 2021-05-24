module Main where

solve :: Int -> Int
solve k = sum (take k liked)

liked :: [Int]
liked = 2 : map (flip div 2 . (* 3)) liked

main :: IO ()
main = interact $ show . solve . read
