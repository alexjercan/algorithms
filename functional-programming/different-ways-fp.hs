choose :: Integer -> Integer -> Integer
choose _ 0 = 1
choose 0 _ = 0
choose n k = choose (n -1) (k -1) * n `div` k

m :: Integer
m = 100000007

solveAll :: [Integer] -> [Integer]
solveAll [] = []
solveAll (n : k : xs) = choose n k `mod` m : solveAll xs

main :: IO ()
main = interact $ unlines . map show . solveAll . map read . tail . words