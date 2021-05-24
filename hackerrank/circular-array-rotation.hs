module Main where

import           Control.Monad (replicateM)

rotateK :: Int -> [Int] -> [Int]
rotateK k xs = reverse (take k xs') ++ reverse (drop k xs')
  where xs' = reverse xs

solve :: Int -> [Int] -> [Int] -> [Int]
solve k xs = map (rotateK (k `mod` n) xs !!)
  where n = length xs

readIntList :: IO [Int]
readIntList = map read . words <$> getLine

readIntList' :: Int -> IO [Int]
readIntList' q = replicateM q (read <$> getLine)

main :: IO ()
main = do
  [_, k, q] <- readIntList
  xs <- readIntList
  qs <- readIntList' q
  putStrLn $ unlines $ map show $ solve k xs qs
