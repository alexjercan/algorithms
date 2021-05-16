import Control.Monad (forM_)
import Data.List (nub)

readIntList :: IO [Int]
readIntList = do map read . words <$> getLine

filterOut :: (Eq a, Num a) => a -> [a] -> Bool
filterOut r [a, b, c] = b * r == a && c * r == b
filterOut _ _ = False

addElem :: (Eq a, Num a) => a -> a -> [a] -> [a]
addElem x r xs
  | null xs = []
  | length xs < 3 && x == r * head xs = x : xs
  | otherwise = []

solve :: (Eq a, Num a) => a -> [a] -> [[a]] -> Int
solve r [] sol = length $ filter (filterOut r) sol
solve r (x : xs) sol = solve r xs ([x] : map (addElem x r) sol ++ sol)

main :: IO ()
main = do
  [n, r] <- readIntList
  xs <- readIntList
  print $ solve r xs []

-- not in time limits : check python version , TODO: understand the algorithm lol