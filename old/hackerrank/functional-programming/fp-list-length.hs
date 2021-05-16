listLength :: [a] -> Int
listLength = foldr (\x -> (+) 1) 0