dot :: Num a => (a, a) -> (a, a) -> a
dot (x1, y1) (x2, y2) = x1 * y2 - y1 * x2

toTouple :: [Float] -> [(Float, Float)]
toTouple [] = []
toTouple (a : b : xs) = (a, b) : toTouple xs

dotAll :: (Float, Float) -> [(Float, Float)] -> Float
dotAll x [a] = dot a x
dotAll x (a : b : xs) = dot a b + dotAll x (b : xs)

solve (x : xs) = abs (dotAll x (x : xs) / 2)

main :: IO ()
main = interact $ show . solve . toTouple . map read . tail . words