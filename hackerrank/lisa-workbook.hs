module Main where

specialP :: Int -> Int -> Int -> Int
specialP pg start end = if start <= pg && pg < end then 1 else 0

specialC :: Int -> Int -> Int -> Int
specialC startPg pbs k = go startPg 1
  where
    go pg pb
      | pb + k > pbs = specialP pg pb (pbs+1)
      | otherwise = specialP pg pb (pb+k) + go (pg+1) (pb+k)

solve :: [Int] -> Int -> Int
solve xs' k = go xs' 1
  where
    go [] _ = 0
    go (x:xs) pg = specialC pg x k + go xs (pg + ceiling ((fromIntegral x :: Float) / fromIntegral k))

readIntList :: IO [Int]
readIntList = map read . words <$> getLine

main :: IO ()
main = do
  [_, k] <- readIntList
  xs <- readIntList
  print (solve xs k)
