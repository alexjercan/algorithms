import Control.Monad (replicateM)
import Data.List (group, nub, sort)

solveAll :: [[Int]] -> [[Int]]
solveAll [] = []
solveAll ([_, r] : xs : rs) = filter' (r, xs) : solveAll rs

readIntList :: IO [Int]
readIntList = do map read . words <$> getLine

printList :: [Int] -> String
printList [] = "-1"
printList xs = unwords $ map show xs

valid :: Int -> [Int] -> [Int]
valid n = map fst . filter (\(_, a) -> a >= n) . map (\l@(a : as) -> (a, length l)) . group . sort

filter' :: (Int, [Int]) -> [Int]
filter' (n, xs) = nub . filter (`elem` v) $ xs
  where
    v = valid n xs

main :: IO ()
main = do
  [n] <- readIntList
  xs <- replicateM (n * 2) readIntList
  putStr $ unlines $ map printList $ solveAll xs