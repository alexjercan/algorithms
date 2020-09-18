import Control.Monad (replicateM)
import Data.List (sortBy)

ascending :: (Ord a1, Ord a2) => (a1, a2) -> (a1, a2) -> Ordering
ascending (a, k1) (b, k2)
  | a < b = LT
  | a > b = GT
  | k1 < k2 = LT
  | otherwise = GT

solve :: (Ord c, Ord a, Foldable t, Num c, Num a) => p -> t (a, a, c) -> c
solve n = maximum . tail . scanl (\x (a, k) -> x + k) 0 . sortBy ascending . foldr (\(a, b, k) xs -> (a, k) : (b + 1, - k) : xs) []

readIntList :: IO [Int]
readIntList = do map read . words <$> getLine

readIntPair :: IO (Int, Int, Int)
readIntPair = do (\(x : y : z : _) -> (x, y, z)) . map read . words <$> getLine

main :: IO ()
main = do
  [n, k] <- readIntList
  qs <- replicateM k readIntPair
  putStr $ show $ solve n qs