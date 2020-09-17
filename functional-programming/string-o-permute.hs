solve :: [a] -> [a]
solve [] = []
solve (a : b : xs) = b : a : solve xs

solveAll :: [[a]] -> [[a]]
solveAll = map solve

main :: IO ()
main = interact $ unlines . solveAll . tail . words