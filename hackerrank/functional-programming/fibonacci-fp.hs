fib :: Integral x => x -> x -> x -> [x]
fib x y 0 = [x `mod` 100000007]
fib x y n = x `mod` 100000007 : fib y (x + y) (n - 1)

list :: [Integer]
list = fib 0 1 10000

solve :: [Int] -> [Integer]
solve = map (list !!)

main :: IO ()
main = interact $ unlines . map show . solve . map read . tail . words