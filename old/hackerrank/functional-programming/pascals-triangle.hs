fac :: (Integral a) => a -> a
fac 0 = 1
fac n = product [1 .. n]

term :: (Integral a) => a -> a -> a
term n r = fac n `div` (fac r * fac (n - r))

col :: Integral t => t -> t -> [t]
col j m
  | j <= m = term m j : col (j + 1) m
  | otherwise = []

line :: Integral t => t -> t -> [[t]]
line i n
  | i < n = col 0 i : line (i + 1) n
  | otherwise = []

triangle :: Integral t => t -> [[t]]
triangle = line 0

main :: IO ()
main = interact $ unlines . map (init . concatMap ((++ " ") . show)) . triangle . read . head . words