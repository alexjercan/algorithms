module Main where

import Data.List (transpose)

type Square = [[Int]]

rot90 :: Square -> Square
rot90 = map reverse . transpose

flipH :: Square -> Square
flipH = transpose

pp :: Square -> IO ()
pp = putStrLn . unlines . map (unwords . map show)

magic :: Square
magic =
  [ [8, 1, 6],
    [3, 5, 7],
    [4, 9, 2]
  ]

allMagic :: [Square]
allMagic = take 4 (iterate rot90 magic) ++ take 4 (iterate rot90 $ flipH magic)

distance :: Square -> Square -> Int
distance = curry $ sum . map sum . uncurry (zipWith (zipWith (curry $ abs . uncurry (-))))

solve :: Square -> Int
solve s = minimum $ map (distance s) allMagic

main :: IO ()
main = interact $ show . solve . map (map read . words) . lines