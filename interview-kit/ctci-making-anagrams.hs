import Data.List (sort)

solve :: [Char] -> [Char] -> Int
solve [] [] = 0
solve (x : xs) [] = 1 + solve xs []
solve [] (x : xs) = 1 + solve [] xs
solve (x : xs) (y : ys)
  | x < y = 1 + solve xs (y : ys)
  | x > y = 1 + solve (x : xs) ys
  | otherwise = solve xs ys

main :: IO ()
main = interact $ show . (\(xs : ys : _) -> solve (sort xs) (sort ys)) . words
