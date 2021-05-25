{-# LANGUAGE TupleSections #-}
module Main where

import           Control.Monad (replicateM)
import           Data.List     (group, sortBy)

binaryOrChar :: Char -> Char -> Char
binaryOrChar '0' '0' = '0'
binaryOrChar _ _     = '1'

binaryOr :: String -> String -> String
binaryOr = zipWith binaryOrChar

bit :: Char -> Int
bit '1' = 1
bit _   = 0

countBits :: String -> Int
countBits = foldr ((+) . bit) 0

generateCombinations :: [a] -> [(a, a)]
generateCombinations []     = []
generateCombinations (x:xs) = map (x,) xs ++ generateCombinations xs

solve :: [String] -> [Int]
solve xs = [head pairs, length pairs]
  where pairs = head $ group $ sortBy (flip compare) (map (countBits . uncurry binaryOr) (generateCombinations xs))

readIntList :: IO [Int]
readIntList = map read . words <$> getLine

main :: IO ()
main = do
  [k, _] <- readIntList
  xs <- replicateM k getLine
  putStrLn $ unlines $ map show $ solve xs
