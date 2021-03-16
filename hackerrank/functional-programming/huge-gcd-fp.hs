solve :: [Integer] -> [Integer] -> Integer
solve ns ms = flip mod 1000000007 $ gcd (product ns) (product ms)

readIntList :: IO [Integer]
readIntList = do map read . words <$> getLine

main :: IO ()
main = do
  n <- getLine
  nList <- readIntList
  m <- getLine
  mList <- readIntList
  print (solve nList mList)