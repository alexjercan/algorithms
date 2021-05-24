module Main where

import           Data.List (group, sort)

valueOf :: [(Int, Int)] -> Int -> Int
valueOf [] _ = 0
valueOf (x:xs) y
  | fst x == y = snd x
  | otherwise = valueOf xs y

buildCount :: Int -> [Int] -> [(Int, Int)]
buildCount k xs = map (\x -> (head x, length x)) (group $ sort $ map (`mod` k) xs)

compareCount :: [(Int, Int)] -> Int -> Int -> Int
compareCount xs x x'
  | x /= x' = max a a'
  | otherwise = if a > 0 then 1 else 0
  where a = valueOf xs x
        a' = valueOf xs x'

solve :: Int -> [Int] -> Int
solve k xs = (if valueOf count 0 > 0 then (1 +) else (0 +)) $ sum $ zipWith (compareCount count) ys ys'
  where count = buildCount k xs
        ys = [1 .. k `div` 2]
        ys' = map (k -) ys

readIntList :: IO [Int]
readIntList = map read . words <$> getLine

main :: IO ()
main = do
  [_, k] <- readIntList
  xs <- readIntList
  print (solve k xs)
