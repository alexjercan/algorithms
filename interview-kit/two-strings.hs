import Control.Monad (forM_)
import Data.List (sort)

readCharList :: IO [Char]
readCharList = do getLine

readIntList :: IO [Int]
readIntList = do map read . words <$> getLine

boolToString :: Bool -> String
boolToString True = "YES"
boolToString False = "NO"

solve :: String -> String -> Bool
solve [] _ = False
solve _ [] = False
solve (x : xs) (y : ys)
  | x < y = solve xs (y : ys)
  | x > y = solve (x : xs) ys
  | otherwise = True

main :: IO ()
main = do
  [n] <- readIntList
  forM_ [1 .. n] $ \q_itr -> do
    xs <- sort <$> readCharList
    ys <- sort <$> readCharList
    putStrLn $ boolToString $ solve xs ys