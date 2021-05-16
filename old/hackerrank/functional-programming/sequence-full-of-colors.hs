check :: (Ord a1, Ord a2, Num a1, Num a2) => a1 -> a1 -> a2 -> a2 -> Bool
check r g b y = abs (r - g) <= 1 && abs (b - y) <= 1

solve :: (Ord a, Num a) => [Char] -> a -> a -> a -> a -> Bool
solve [] r g b y = r == g && b == y
solve (x : xs) r g b y
  | x == 'R' = check r g b y && solve xs (r + 1) g b y
  | x == 'G' = check r g b y && solve xs r (g + 1) b y
  | x == 'B' = check r g b y && solve xs r g (b + 1) y
  | x == 'Y' = check r g b y && solve xs r g b (y + 1)

solveAll :: [String] -> [Bool]
solveAll = map (\x -> solve x 0 0 0 0)

main :: IO ()
main = interact $ unlines . map show . solveAll . tail . words