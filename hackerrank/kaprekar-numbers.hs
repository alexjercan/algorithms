module Main where

parseInt :: String -> Int
parseInt "" = 0
parseInt xs = read xs

kaprekar :: Int -> Bool
kaprekar x = x == f + s
  where
    xs = show $ x * x
    n = length xs
    d = n `div` 2
    f = parseInt $ take d xs
    s = parseInt $ drop d xs

solve :: [Int] -> [Int]
solve [a, b] = filter kaprekar [a .. b]
solve _      = []

result :: String -> String
result "" = "INVALID RANGE"
result x = x

main :: IO ()
main = interact $ result . unwords . map show . solve . map read . lines
