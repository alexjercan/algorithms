module Main where

solve :: [Int] -> Int
solve [] = 0
solve [_] = 0
solve [_, _] = 1
solve (_:y:z:xs)
  | z == 1 = 1 + solve (y:z:xs)
  | otherwise = 1 + solve (z:xs)

readIntList :: IO [Int]
readIntList = map read . words <$> getLine

main :: IO ()
main = do
  _ <- readIntList
  xs <- readIntList
  print (solve xs)
