module Main where

numbers :: String -> [Int]
numbers = map read . words

solution :: [Int] -> Maybe Int
solution [] = Just 0
solution [x] = if even x then Just 0 else Nothing
solution (x:y:xs) = if even x then solution (y:xs) else (+2) <$> solution (y+1:xs)

result :: Maybe Int -> String
result Nothing = "NO"
result (Just x) = show x

solve :: String -> String
solve input = result $ solution xs
    where xs = numbers $ last $ lines input

main :: IO ()
main = interact solve
