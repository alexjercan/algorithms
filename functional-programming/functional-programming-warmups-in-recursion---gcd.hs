gcd' :: (Ord t, Num t) => t -> t -> t
gcd' x y
  | x == y = x
  | x > y = gcd' (x - y) y
  | otherwise = gcd' x (y - x)