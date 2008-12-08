{-========================================
=========================================-}

size :: Int
size = 12 + 13

square :: Int -> Int
square n = n * n

dbl :: Int -> Int
dbl n = 2*n

example :: Int
example = double (size - square (2 + 2))
