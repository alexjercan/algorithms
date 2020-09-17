count :: [Char] -> Char -> Int -> [Char]
count [] c 1 = [c]
count [] c n = c : show n
count (x : xs) c n
  | x == c = count xs c (n + 1)
  | n == 1 = c : count xs x 1
  | otherwise = c : show n ++ count xs x 1

solve :: String -> String
solve (x : xs) = count xs x 1

main :: IO ()
main = interact $ (\(x : _) -> solve x) . words