import Data.List (sort)

solve :: (Num a, Ord a) => [a] -> a
solve xs = minimum $ zipWith (\a b -> abs (a - b)) (init ys) (tail ys)
  where
    ys = sort xs

main :: IO ()
main = interact $ show . solve . map read . tail . words