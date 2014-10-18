double x = x + x

quadruple x = double (double x)

factorial n = product [1..n]

average ns = div (sum ns) (length ns)

mylast ns = head (drop (length ns - 1) ns)

qsort [] = []
qsort (x : xs) = qsort smaller ++ [x ] ++ qsort larger
                 where
                   smaller = [a | a <- xs, a <= x]
                   larger = [b | b <- xs, b > x]

sum1 [] = 0
sum1 (x : xs) = x + sum1 xs

fib 0 = 0
fib 1 = 1
fib (x)  = fib(x-1) + fib(x-2)