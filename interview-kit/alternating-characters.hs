import Control.Monad (forM_)

readIntList :: IO [Int]
readIntList = do map read . words <$> getLine

readString :: IO String
readString = do getLine

solve :: String -> Int
solve [a] = 0
solve (a : b : xs)
  | a == b = 1 + solve (b : xs)
  | otherwise = solve (b : xs)

main :: IO ()
main = do
  [n] <- readIntList
  forM_ [1 .. n] $ \q_itr -> do
    xs <- readString
    print $ solve xs
