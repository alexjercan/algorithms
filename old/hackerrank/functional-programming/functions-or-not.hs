isUnique :: Eq a => [a] -> Bool
isUnique [] = True
isUnique (x : xs) = x `notElem` xs && isUnique xs

solve :: [(Int, Int)] -> Bool
solve xs = isUnique [a | (a, b) <- xs]

toTouple :: [Int] -> [(Int, Int)]
toTouple [] = []
toTouple (a : b : xs) = (a, b) : toTouple xs

toListList :: [Int] -> [[Int]]
toListList [] = []
toListList (n : list) = first : toListList rest
  where
    (first, rest) = splitAt (n * 2) list

solveAll :: [Int] -> [Bool]
solveAll xs = map (solve . toTouple) (toListList xs)

boolToString :: Bool -> String
boolToString True = "YES"
boolToString False = "NO"

main :: IO ()
main = interact $ unlines . map boolToString . solveAll . map read . tail . words