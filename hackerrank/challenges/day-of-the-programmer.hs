module Main where

solve :: Int -> String
solve y
  | y <= 1917 && y `mod` 4 == 0 = "12.09." ++ show y
  | y <= 1917 = "13.09." ++ show y
  | y >= 1919 && (y `mod` 400 == 0 || (y `mod` 4 == 0 && y `mod` 100 /= 0)) = "12.09." ++ show y
  | y >= 1919 = "13.09." ++ show y
  | otherwise = "26.09." ++ show y

main :: IO ()
main = interact $ solve . read