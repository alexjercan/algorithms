solve :: String -> String -> Int
solve [] _ = 0
solve _ [] = 0
solve (x : xs) (y : ys)
  | x == y = 1 + solve xs ys
  | otherwise = max (solve (x : xs) ys) (solve xs (y : ys))

main :: IO ()
main = interact $ show . (\(xs:ys:_) -> solve (reverse xs) (reverse ys)) . words