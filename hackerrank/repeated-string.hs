module Main where

solve :: String -> Int -> Int
solve str n = (n `div` m) * k + k'
  where m = length str
        k = length $ filter (=='a') str
        k' = length $ filter (=='a') (take (n `mod` m) str)

readIntList :: IO [Int]
readIntList = map read . words <$> getLine

main :: IO ()
main = do
  str <- getLine
  [n] <- readIntList
  print (solve str n)
