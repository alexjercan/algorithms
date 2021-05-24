module Main where

solve :: [Int] -> [Int]
solve [] = []
solve xs = n : solve (filter (>0) $ map (flip (-) m) xs)
  where m = minimum xs
        n = length xs

readIntList :: IO [Int]
readIntList = map read . words <$> getLine

main :: IO ()
main = do
  _ <- readIntList
  xs <- readIntList
  putStrLn $ unlines $ map show $ solve xs
