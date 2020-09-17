solve :: [a] -> [a] -> [a]
solve xs ys = concat (zipWith (\x y -> [x, y]) xs ys)

main :: IO ()
main = interact $ (\(x : y : _) -> solve x y) . words