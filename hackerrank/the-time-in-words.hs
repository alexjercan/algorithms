module Main where

numbers :: [String]
numbers = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen", "twenty", "twenty one", "twenty two", "twenty three", "twenty four", "twenty five", "twenty six", "twenty seven", "twenty eight", "twenty nine"]

solve :: [Int] -> String
solve [h, m]
  | m == 0 = numbers !! h ++ " o' clock"
  | m == 1 = numbers !! m ++ " minute past " ++ numbers !! h
  | m == 15 = "quarter past " ++ numbers !! h
  | m == 30 = "half past " ++ numbers !! h
  | m == 45 = "quarter to " ++ numbers !! (h + 1)
  | m == 59 = numbers !! (60 - m) ++ " minute to " ++ numbers !! (h + 1)
  | m < 30 = numbers !! m ++ " minutes past " ++ numbers !! h
  | m > 30 = numbers !! (60 - m) ++ " minutes to " ++ numbers !! (h + 1)
  | otherwise = ""
solve _ = ""

main :: IO ()
main = interact $ solve . map read . lines
