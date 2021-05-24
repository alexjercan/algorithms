module Main where

import           Control.Monad (replicateM)

showBool :: Bool -> String
showBool True  = "NO"
showBool False = "YES"

solveOne :: (Int, [Int]) -> Bool
solveOne (k, xs) = k <= length (filter (<=0) xs)

solve :: [(Int, [Int])] -> [String]
solve = map (showBool . solveOne)

readIntList :: IO [Int]
readIntList = map read . words <$> getLine

readSchedule :: IO (Int, [Int])
readSchedule = do
  [_, k] <-readIntList
  xs <- readIntList
  return (k, xs)

main :: IO ()
main = do
  [n] <- readIntList
  xs <- replicateM n readSchedule
  putStrLn $ unlines $ solve xs
