module Main where

prices :: Int -> Int -> Int -> [Int]
prices p d m = p : prices (max m (p - d)) d m

solve :: [Int] -> Int
solve [pr, d, m, sm] = go (prices pr d m) sm
  where
    go [] _ = 0
    go (p:ps) s
      | s < p = 0
      | otherwise = 1 + go ps (s - p)
solve _ = 0

main :: IO ()
main = interact $ show . solve . map read . words
