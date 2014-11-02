ls = [2,4,1,5,3,4]

double x = x + x

quadruple x = double (double x)

factorial n = product [1..n]

average ns = div (sum ns) (length ns)

mylast ns = head (drop (length ns - 1) ns)

myinit ns = take (length ns - 1) ns
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

n = a `div` length xs
    where 
    	a = 10
    	xs = [1,2,3,4,5]

absMod x = if (x >= 0)
             then x
             else x * (-1)

doubleSmallNumber x = if x > 100  
                        then x  
                        else x*2

getKth (k, xs) = last (take (k+1) xs)

add' :: Int -> Int -> Int
add' x y = x + y

test1 (x, y) = x + y

test2 x y = x + y
