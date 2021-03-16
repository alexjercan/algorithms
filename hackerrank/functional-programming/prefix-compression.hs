getCommonPrefix :: String -> String -> String
getCommonPrefix [] _ = []
getCommonPrefix _ [] = []
getCommonPrefix (x : xs) (y : ys)
  | x == y = x : getCommonPrefix xs ys
  | otherwise = []

getRest :: String -> Int -> String
getRest xs n = drop n xs

getStrings :: String -> String -> [String]
getStrings xs ys = [prefix, getRest xs n, getRest ys n]
  where
    prefix = getCommonPrefix xs ys
    n = length prefix

solve :: String -> String -> [(Int, String)]
solve xs ys = zip lens strings
  where
    strings = getStrings xs ys
    lens = map length strings

getListLine :: IO String
getListLine = do getLine

main :: IO ()
main = do
  xs <- getListLine
  ys <- getListLine

  let [(n, p), (nx, x), (ny, y)] = solve xs ys
  putStr $ show n
  putStr " "
  putStrLn p
  putStr $ show nx
  putStr " "
  putStrLn x
  putStr $ show ny
  putStr " "
  putStrLn y
