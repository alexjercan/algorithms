import Data.List ( sortBy )

descending :: Int -> Int -> Ordering
descending a b
  | a > b = LT
  | otherwise = GT

readIntList :: IO [Int]
readIntList = do map read . words <$> getLine

solve :: Int -> [Int] -> Int -> Int
solve _ [] _ = 0
solve k xs price = (price + 1) * sum (take k xs) + solve k (drop k xs) (price + 1)

main :: IO ()
main = do
    [n, k] <- readIntList
    xs <- readIntList
    print $ solve k (sortBy descending xs) 0