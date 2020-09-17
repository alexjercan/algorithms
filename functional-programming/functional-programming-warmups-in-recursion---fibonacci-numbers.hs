fib :: (Eq a, Num a, Num p) => a -> p
fib 1 = 0
fib 2 = 1
fib n = fib (n - 1) + fib (n - 2)