-- todo more : list comprehensions
add :: (Int, Int) -> Int
add (x, y) = x + y

zero2 :: Int -> [Int]
zero2 n = [0..n]

mult :: Int -> (Int -> (Int -> Int))
mult x y z = x * y * z

n = a `div` length xs 
 where
    a = 10
    xs = [1,2,3,4,5]


doubleSmallNum x = (if x > 50 then x else x * 2  ) + 100

sides = [(x,y,z) | z <- [1..10] , y <- [1..z] , x <- [1..z], x+y+z == 24, x^2 + y^2 == z^2]

oddNumbers = [x | x <- [1..20] , (mod x 2) /= 0 ]

oddNumbers2 = [x | x <- [1,3..20] ]

factorial :: Integer -> Integer
factorial n = product [1..n]

factors :: Int -> [Int]
factors n = [x| x <- [1..n], (n `mod` x) == 0 ]

isPrime :: Int -> Bool
isPrime n = factors n == [1,n]

getPrimes n = [x | x <- [1..n], isPrime(x)]

getPrimesBetween a b = [x | x <- [a..b], isPrime(x)]

isPerfect x = (sum (factors x) - x) == x

perfects n = [x | x <- [1..n], isPerfect(x) ]

pairs :: [a] -> [(a, a)]
pairs xs = zip xs (tail(xs))


isSorted xs = sum [1 | (x,y) <- pairs (xs), x>y] == 0

isSorted' xs = and [x<=y | (x,y) <- pairs (xs)]






























































