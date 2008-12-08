###################

FirstLiterate.lhs

###################

The value size is an integer (Int), defined to be the sum
of twelve and thirteen.

>   size :: Int
>   size = 12+13

The function to square an integer.

>   square :: Int -> Int
>   square n = n*n

The function to double an integer.

>   dbl :: Int -> Int
>   dbl n  = 2*n

An example, using double, square and size.

>   example :: Int
>   example = dbl (size - square (2+2))
