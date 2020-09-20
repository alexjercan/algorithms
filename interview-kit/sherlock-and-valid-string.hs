import Data.List (group, sort, sortBy)

ascending :: String -> String -> Ordering
ascending a b
  | length a <= length b = LT
  | otherwise = GT

solve :: String -> String
solve xs
  | len == 1 = "YES"
  | len == 2 && length (head arr) == 1 && (head (head arr) - 1 == head (last arr) || head (head arr) - 1 == 0) = "YES"
  | len == 2 && length (last arr) == 1 && (head (last arr) - 1 == head (head arr) || head (last arr) - 1 == 0) = "YES"
  | otherwise = "NO"
  where
    len = length arr
    arr = group $ map length ys
    ys = sortBy ascending $ group $ sort xs

main :: IO ()
main = interact solve