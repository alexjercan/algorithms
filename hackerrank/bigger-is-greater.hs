module Main where

import           Control.Monad
import           Data.Maybe

longestNonIncreasingSuffix :: (Eq a, Ord a) => [a] -> [a] -> [a]
longestNonIncreasingSuffix [] ys = reverse ys
longestNonIncreasingSuffix (x:xs) [] = longestNonIncreasingSuffix xs [x]
longestNonIncreasingSuffix (x:xs) ys'@(y:_)
  | x <= y = longestNonIncreasingSuffix xs (x:ys')
  | otherwise = longestNonIncreasingSuffix xs [x]

nextSuffix :: (Eq a, Ord a) => a -> [a] -> Maybe [a]
nextSuffix pivot suffix = if pivot == pivot' && suffix == suffix' then Nothing else Just (pivot':suffix')
  where (pivot', suffix') = go pivot (reverse suffix)
        go x [] = (x, [])
        go x (a:xs)
          | x < a = (a, x:xs)
          | otherwise = (y, a:ys)
            where (y, ys) = go x xs

solve :: (Eq a, Ord a) => [a] -> Maybe [a]
solve xs
  | xs == suffix || isNothing suffix' = Nothing
  | otherwise = Just (prefix++(fromJust suffix'))
  where
    suffix = longestNonIncreasingSuffix xs []
    rest = take (length xs - length suffix) xs
    prefix = init rest
    pivot = last rest
    suffix' = nextSuffix pivot suffix

main :: IO ()
main = do
  n <- read <$> getLine
  xs <- replicateM n (fromMaybe "no answer" <$> solve <$> getLine)
  putStrLn $ unlines xs
