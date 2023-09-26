module Main where

{-
numbers = "0123456789"
lower_case = "abcdefghijklmnopqrstuvwxyz"
upper_case = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
special_characters = "!@#$%^&*()-+"
-}

numbers :: String -> Int
numbers xs = if (==0) $ length $ filter (`elem` "0123456789") xs then 1 else 0

lower :: String -> Int
lower xs = if (==0) $ length $ filter (`elem` "abcdefghijklmnopqrstuvwxyz") xs then 1 else 0

upper :: String -> Int
upper xs = if (==0) $ length $ filter (`elem` "ABCDEFGHIJKLMNOPQRSTUVWXYZ") xs then 1 else 0

special :: String -> Int
special xs = if (==0) $ length $ filter (`elem` "!@#$%^&*()-+") xs then 1 else 0

length' :: String -> Int
length' xs = max 0 (6 - length xs)

password :: String -> Int
password xs = max x l
    where
        x = numbers xs + lower xs + upper xs + special xs
        l = length' xs

main :: IO ()
main = interact $ show . password . last . lines
