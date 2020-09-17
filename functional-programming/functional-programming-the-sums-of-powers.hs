import Data.List (subsequences)

getCandidates :: Integer -> Integer -> [Integer]
getCandidates n p = [x ^ p | x <- [1 .. n], x ^ p <= n]

count :: (Ord a1, Num a2, Num a1) => [a1] -> a1 -> a2
count [] _ = 0
count (x : xs) s
  | x == s = 1
  | x > s = count xs s
  | otherwise = count xs (s - x) + count xs s

solve :: Integer -> Integer -> Integer
solve n p = count (getCandidates n p) n

main :: IO ()
main = do
  n <- readLn
  p <- readLn
  print (solve n p)