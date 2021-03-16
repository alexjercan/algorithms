import Control.Monad (replicateM)

solve :: Int -> Int -> Int
solve a b = length [x | x <- [1 .. g], g `mod` x == 0]
  where
    g = gcd a b

readIntList :: IO [Int]
readIntList = do map read . words <$> getLine

readIntPair :: IO (Int, Int)
readIntPair = do (\(x : y : _) -> (x, y)) . map read . words <$> getLine

printList :: [Int] -> String
printList = unlines . map show

main :: IO ()
main = do
  [n] <- readIntList
  xs <- replicateM n readIntPair
  putStr $ printList $ map (uncurry solve) xs