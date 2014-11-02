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