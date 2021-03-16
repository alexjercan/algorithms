import Data.List (sort)

readStringList :: IO [String]
readStringList = do words <$> getLine

readIntList :: IO [Int]
readIntList = do map read . words <$> getLine

boolToString :: Bool -> String
boolToString True = "Yes"
boolToString False = "No"

areEqual :: String -> String -> Bool
areEqual [] [] = True
areEqual [] _ = False
areEqual _ [] = False
areEqual (x : xs) (y : ys)
  | x == y = areEqual xs ys
  | otherwise = False

solve :: [String] -> [String] -> Bool
solve _ [] = True
solve [] _ = False
solve (m : mag) (n : note)
  | areEqual m n = solve mag note
  | otherwise = solve mag (n : note)

main :: IO ()
main = do
  [n, m] <- readIntList
  mag <- sort <$> readStringList
  note <- sort <$> readStringList
  putStr $ boolToString $ solve mag note
