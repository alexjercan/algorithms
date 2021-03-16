import Data.List (group)

pass :: [(Char, Int)] -> Int
pass [] = 0
pass [_] = 0
pass [_, _] = 0
pass ((c1, i1) : (c2, i2) : (c3, i3) : ms)
  | c1 == c3 && i2 == 1 = minimum [i1, i3] + pass rest
  | otherwise = pass rest
  where
    rest = (c2, i2) : (c3, i3) : ms

solve :: String -> Int
solve xs = ans1 + ans2
  where
    ans1 = foldr (\(c, i) ans -> ans + (i * (i + 1)) `div` 2) 0 ms
    ans2 = pass ms
    ms = zip (map head ys) (map length ys)
    ys = group xs

main :: IO ()
main = interact $ show . solve . last . words