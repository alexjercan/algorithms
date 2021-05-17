module Main where

import Control.Monad (replicateM)

solve :: [Int] -> String
solve [x, y, z]
  | distA < distB = "Cat A"
  | distA > distB = "Cat B"
  | otherwise = "Mouse C"
  where
    distA = abs (x - z)
    distB = abs (y - z)
solve _ = ""

readIntList :: IO [Int]
readIntList = map read . words <$> getLine

main :: IO ()
main = do
  [n] <- readIntList
  x <- unlines <$> replicateM n (solve <$> readIntList)
  putStrLn x