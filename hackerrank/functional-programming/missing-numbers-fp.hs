import Data.List (nub, sort)

solve :: [Integer] -> [Integer] -> [Integer]
solve [] ys = ys
solve (x : xs) (y : ys)
  | x > y = y : solve (x : xs) ys
  | otherwise = solve xs ys

readIntList :: IO [Integer]
readIntList = do map read . words <$> getLine

main :: IO ()
main = do
  n <- getLine
  nList <- readIntList
  m <- getLine
  mList <- readIntList
  putStrLn $ unwords $ show <$> nub (solve (sort nList) (sort mList))