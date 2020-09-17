import Control.Monad (replicateM)
import Data.Array (Array, Ix, array, (!))
import Data.List (sortBy)

binarySearch :: (Ord a2, Integral a1, Ix a1) => Array a1 a2 -> a2 -> a1 -> a1 -> Maybe a1
binarySearch haystack needle lo hi
  | hi < lo = Just (mid + 1)
  | pivot > needle = binarySearch haystack needle lo (mid -1)
  | pivot < needle = binarySearch haystack needle (mid + 1) hi
  | otherwise = Just mid
  where
    mid = lo + (hi - lo) `div` 2
    pivot = haystack ! mid

writeToArray :: [e] -> Array Int e
writeToArray list = array (1, length list) (zip [1 .. length list] list)

descending :: Int -> Int -> Ordering
descending a b
  | a > b = LT
  | otherwise = GT

readIntList :: IO [Int]
readIntList = do map read . words <$> getLine

readInt :: IO Int
readInt = do read <$> getLine

printList :: [Maybe Int] -> String
printList = unlines . map printMaybe

printMaybe :: Maybe Int -> String
printMaybe Nothing = "-1"
printMaybe (Just x) = show x

solve :: Int -> [Int] -> Maybe Int
solve s xs
  | index <= length xs = Just index
  | otherwise = Nothing
  where
    Just index = binarySearch (writeToArray xs) s 1 (length xs)

main :: IO ()
main = do
  [n] <- readIntList
  xs <- readIntList
  let sorted = tail $ scanl (+) 0 $ sortBy descending xs
  [m] <- readIntList
  ss <- replicateM m readInt
  putStr $ printList $ map (`solve` sorted) ss