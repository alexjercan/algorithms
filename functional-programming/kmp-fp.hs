data KMP a = KMP
  { done :: Bool,
    next :: a -> KMP a
  }

makeTable :: Eq a => [a] -> KMP a
makeTable xs = table
  where
    table = makeTable' xs (const table)

makeTable' :: Eq a => [a] -> (a -> KMP a) -> KMP a
makeTable' [] failure = KMP True failure
makeTable' (x : xs) failure = KMP False test
  where
    test c = if c == x then success else failure c
    success = makeTable' xs (next (failure x))

isStr :: Eq a => ([a], [a]) -> Bool
isStr (bs, as) = match (makeTable as) bs
  where
    match table [] = done table
    match table (b : bs) = done table || match (next table b) bs

boolToString :: Bool -> String
boolToString True = "YES"
boolToString False = "NO"

toTouple :: [a] -> [(a, a)]
toTouple [] = []
toTouple (a : b : xs) = (a, b) : toTouple xs

solveAll :: [String] -> [Bool]
solveAll xs = map isStr (toTouple xs)

main :: IO ()
main = interact $ unlines . map boolToString . solveAll . tail . words