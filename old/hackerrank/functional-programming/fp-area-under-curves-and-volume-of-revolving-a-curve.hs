solve :: Double -> Double -> [(Double, Double)] -> (Double, Double)
solve l r cs =
  ( sum [p x * step | x <- xs],
    sum [pi * p x ^ 2 * step | x <- xs]
  )
  where
    p = poly cs
    step = 0.001
    xs = [l, l + step .. r]

poly :: [(Double, Double)] -> Double -> Double
poly cs x = sum [a * (x ** b) | (a, b) <- cs]

getListLine :: Read a => IO [a]
getListLine = do map read . words <$> getLine

main :: IO ()
main = do
  as <- getListLine
  bs <- getListLine
  [l, r] <- getListLine

  let (area, volume) = solve l r (zip as bs)
  print area
  print volume