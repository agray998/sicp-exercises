-- Exercise 1.3: Define a procedure that takes three numbers as arguments, 
-- and returns the sum of the squares of the two larger numbers

sumMaxSquares a b c | (&&) ((<) a b) ((<) a c) = (+) ((^) b 2) ((^) c 2)
                    | (&&) ((<) b a) ((<) b c) = (+) ((^) a 2) ((^) c 2)
                    | otherwise = (+) ((^) a 2) ((^) b 2)