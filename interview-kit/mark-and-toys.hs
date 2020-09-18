import Data.List (sort)

readIntList :: IO [Int]
readIntList = do map read . words <$> getLine

find :: Int -> [Int] -> Int
find s (x:xs)
    | s > x = 1 + find s xs
    | otherwise = 0

solve :: Int -> [Int] -> Int
solve s = find s . tail . scanl (+) 0 . sort

main :: IO ()
main = do
  [n, s] <- readIntList
  xs <- readIntList
  print $ solve s xs