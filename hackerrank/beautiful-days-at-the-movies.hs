module Main where

reverseNumber :: Int -> Int
reverseNumber = read . reverse . show

solve :: Int -> Int -> Int -> Int
solve i j k = length $ filter (==True) $ zipWith (curry $ (==0) . flip mod k . abs . uncurry (-)) (map reverseNumber days) days
  where days = [i .. j]

readIntList :: IO [Int]
readIntList = map read . words <$> getLine

main :: IO ()
main = do
  [i, j, k] <- readIntList
  print (solve i j k)
