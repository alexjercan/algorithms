import Control.Monad (replicateM)
import Data.List ( sortBy )

descending :: (Int, Int) -> (Int, Int) -> Ordering
descending (a1, b1) (a2, b2)
  | a1 > a2 = LT
  | otherwise = GT

readIntList :: IO [Int]
readIntList = do map read . words <$> getLine

readIntPair :: IO (Int, Int)
readIntPair = do (\(x : y : _) -> (x, y)) . map read . words <$> getLine

solve :: Int -> [(Int, Int)] -> Int
solve _ [] = 0
solve 0 ((a, 1) : xs) = - a + solve 0 xs
solve k ((a, 0) : xs) = a + solve k xs
solve k ((a, 1) : xs) = a + solve (k - 1) xs

main :: IO ()
main = do
  [n, k] <- readIntList
  xs <- replicateM n readIntPair
  print $ solve k $ sortBy descending xs