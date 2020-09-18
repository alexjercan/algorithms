import Control.Monad (forM_)
import Data.List (group, inits, sort, tails)

readCharList :: IO [Char]
readCharList = do getLine

readIntList :: IO [Int]
readIntList = do map read . words <$> getLine

nonEmptySubstrings :: [Char] -> [[Char]]
nonEmptySubstrings = concatMap (tail . inits) . tails

solve :: [Char] -> Int
solve = foldr (\xs s -> s + (length xs) * (length xs - 1) `div` 2) 0 . filter (\xs -> length xs /= 1) . group . sort . map sort . nonEmptySubstrings

main :: IO ()
main = do
  [n] <- readIntList
  forM_ [1 .. n] $ \q_itr -> do
    xs <- readCharList
    putStrLn $ show $ solve xs