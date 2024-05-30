module Main where

import Data.List (sort)

insertOrder :: Int -> [Int] -> [Int]
insertOrder x [] = [x]
insertOrder x (y:ys)
    | x <= y = x:y:ys
    | otherwise = y : (insertOrder x ys)

sweeten :: [Int] -> [Int]
sweeten (a:b:xs) = insertOrder (a + 2 * b) xs
sweeten _ = [-1]

solve :: [Int] -> Int -> Int
solve xs k = case until finished go (xs, 0) of
                ([-1], _) -> -1
                (_, n) -> n
    where
        go :: ([Int], Int) -> ([Int], Int)
        go (xs, count) = (sweeten xs, count + 1)
        finished :: ([Int], Int) -> Bool
        finished ([-1], _) = True
        finished (xs, _) = all (>= k) xs

sweeten' :: [Int] -> [Int]
sweeten' (a:b:xs) = (a + 2 * b) : xs
sweeten' _ = [-1]

isDoable :: [Int] -> Int -> Bool
isDoable xs k = case until finished go (xs, 0) of
                ([-1], _) -> False
                (_, n) -> True
    where
        go :: ([Int], Int) -> ([Int], Int)
        go (xs, count) = (sweeten' xs, count + 1)
        finished :: ([Int], Int) -> Bool
        finished ([-1], _) = True
        finished (xs, _) = all (>= k) xs

main :: IO ()
main = do
    [_, k] <- (map (read :: (String -> Int)) . words) <$> getLine
    xs <- (sort . map (read :: (String -> Int)) . words) <$> getLine
    if isDoable xs k then print $ solve xs k else putStrLn "-1"
