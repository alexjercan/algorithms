solve :: String -> [String]
solve xs = uncurry (++) <$> [(b, a) | (a, b) <- splits]
  where
    splits = flip splitAt xs <$> [1 .. length xs]

main :: IO ()
main = interact $ unlines . map (unwords . solve) . tail . lines