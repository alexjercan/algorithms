import Control.Monad (replicateM)

gcd' :: [(Int, Int)] -> [(Int, Int)] -> [(Int, Int)]
gcd' [] _ = []
gcd' _ [] = []
gcd' ((p1, a1) : ps) ((q1, b1) : qs)
  | p1 == q1 = (p1, min a1 b1) : gcd' ps qs
  | p1 < q1 = gcd' ps ((q1, b1) : qs)
  | otherwise = gcd' ((p1, a1) : ps) qs

fold' :: (a -> a -> a) -> [a] -> a
fold' f [x, y] = f x y
fold' f (x : xs) = f x $ fold' f xs

listToToupleList :: [Int] -> [(Int, Int)]
listToToupleList [] = []
listToToupleList (x : y : xs) = (x, y) : listToToupleList xs

toupleListToList :: [(Int, Int)] -> [Int]
toupleListToList [] = []
toupleListToList ((x, y) : xs) = x : y : toupleListToList xs

solve :: [[Int]] -> [Int]
solve = toupleListToList . fold' gcd' . map listToToupleList

readIntList :: IO [Int]
readIntList = do map read . words <$> getLine

main :: IO ()
main = do
  [n] <- readIntList
  list <- replicateM n readIntList
  putStrLn $ unwords $ map show $ solve list