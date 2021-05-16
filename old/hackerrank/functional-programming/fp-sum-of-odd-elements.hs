sumOddElements :: [Int] -> Int
sumOddElements array = sum [x | x <- array, odd x]