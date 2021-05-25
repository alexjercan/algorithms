module Main where

import           Control.Monad (replicateM)

solveOne :: (Int, Int, Int, Int, Int) -> Int
solveOne (b, w, bc, wc, z) = b * bc' + w * wc'
  where bc' = min bc (wc + z)
        wc' = min wc (bc + z)

readIntList :: IO [Int]
readIntList = map read . words <$> getLine

readInput :: IO (Int, Int, Int, Int, Int)
readInput = do
  [b, w] <- readIntList
  [bc, wc, z] <- readIntList
  return (b, w, bc, wc, z)

main :: IO ()
main = do
  [q] <- readIntList
  qs <- replicateM q readInput
  putStrLn $ unlines $ map (show . solveOne) qs
