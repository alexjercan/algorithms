distance :: (Float, Float) -> (Float, Float) -> Float
distance (x1, y1) (x2, y2) = sqrt ((x1 - x2) ^ 2 + (y1 - y2) ^ 2)

toTouple :: [Float] -> [(Float, Float)]
toTouple [] = []
toTouple (a : b : xs) = (a, b) : toTouple xs

distanceAll :: (Float, Float) -> [(Float, Float)] -> Float
distanceAll x [a] = distance a x
distanceAll x (a : b : xs) = distance a b + distanceAll x (b : xs)

solve (x : xs) = distanceAll x (x : xs)

main :: IO ()
main = interact $ show . solve . toTouple . map read . tail . words