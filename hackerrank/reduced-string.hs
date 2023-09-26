module Main where

import Data.List (group)
import Data.Function (fix)

converge :: Eq a => (a -> a) -> a -> a
converge = until =<< ((==) =<<)

reduce :: String -> String
reduce = map head . filter ((==1) . (`mod` 2) . length) . group

solve :: String -> String
solve = pprint . converge reduce
    where pprint xs = if null xs then "Empty String" else xs

main :: IO ()
main = interact solve
