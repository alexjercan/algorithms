powers :: Num a => a -> [a]
powers x = take 10 $ iterate (* x) 1

factorial :: [Double]
factorial = scanl (*) 1 $ take 9 [1 ..]

eval :: Double -> Double
eval x = sum $ zipWith (/) (powers x) factorial

evalAll :: [Double] -> [Double]
evalAll = map eval

main :: IO ()
main = interact $ unlines . map show . evalAll . map read . tail . words