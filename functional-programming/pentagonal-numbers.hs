pen :: Integral c => c -> c
pen n = (`div` 2) $ n * (n * 3 - 1)

main :: IO ()
main = interact $ unlines . map (show . pen . read) . tail . words