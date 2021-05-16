import Data.List (sort)

solve :: [Int] -> [Int] -> Int -> Int
solve _ [] ret = ret
solve (x : xs) (y : ys) ret = solve xs ys (min (y - x) ret)

solve' :: Int -> [Int] -> Int
solve' x xx = solve xs ys maxBound
  where
    xs = sort xx
    ys = drop (x - 1) xs

main :: IO ()
main = interact $ show . (\(x : xx) -> solve' x xx) . map read . tail . words