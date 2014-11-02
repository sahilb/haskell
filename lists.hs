--  more : list comprehensions
oddNumbers = [x | x <- [1..11] , (mod x 2) /= 0 ]
oddNumbers1 = [x | x <- [1,3..11] ]

myButLast = last . init
myButLast' = head . reverse . init
myButLast'' = head . tail . reverse
myButLast''' xs = head (drop (length (xs) - 2 ) xs)

duplicate xs = [x + 0 | x <- xs, y <- xs , y == last(xs) || x == y ] ++ [last(xs)]

dupli [] = []
dupli (x:xs) = x:x:dupli xs

head1 (x:xs) = x
head2 (x:_) = x

tail1 (x:xs) = xs

length1 [] = 0
length1 (x:xs) = 1 + length1 (xs)

length2 xs = sum [1 | x <- xs]


halved xs = ((take (div (length xs) 2) xs) , (drop (div (length xs) 2) xs) )

halved' xs = (take n xs, drop n xs)
	where n = div (length xs) 2				
	

safetail xs = if null xs
				then []
				else tail xs

safetail' (_:xs) = xs
safetail' [] = []


safetail'' xs
	| null xs = []
	| otherwise = tail xs				