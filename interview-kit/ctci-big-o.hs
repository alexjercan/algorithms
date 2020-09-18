import Control.Monad (forM_)

readIntList :: IO [Integer]
readIntList = do map read . words <$> getLine

readFloatList :: IO [Integer]
readFloatList = do map read . words <$> getLine

boolToString :: Bool -> String
boolToString True = "Prime"
boolToString False = "Not prime"

isPrime :: Integral t => t -> t -> Bool
isPrime k i
  | k == 1 = False
  | k == 2 = True
  | k `mod` i == 0 = False
  | i * i >= k = True
  | otherwise = isPrime k (i + 1)

solve = boolToString . flip isPrime 2

main :: IO ()
main = do
  [n] <- readIntList
  forM_ [1 .. n] $ \q_itr -> do
    [xs] <- readIntList
    putStrLn $ solve xs