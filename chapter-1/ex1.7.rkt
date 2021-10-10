#lang sicp

#| Exercise 1.7: Explanation- In the given implementation of square root,
the end test specified in the good-enough? procedure compares the square 
of the guess with the radicand, and returns true if they differ by less 
than 0.001. This will not suffice for finding square roots of small values, 
where this difference of 0.001 may be the same order of magnitude as the 
root we are looking for. Further, for large radicands, this test may fail.
The way computers represent floating point values means that, as numbers 
get larger, the gaps in the set of numbers the computer can represent grow 
in size, so it may not be possible, for very large numbers, to get within 
0.001 of the radicand, as the gaps between values represented by the computer 
may be larger than 0.001. The good-enough? procedure can be improved by testing 
not the difference between the square of the guess and the radicand, but the 
difference between one guess and the next. Here, the iteration will end when
the change in the value of guess is less than 0.5% of its' current value. |#

(define (sqrt-iter guess x)
        (if (good-enough? guess x)
            guess
            (sqrt-iter (improve guess x)
                       x)))

(define (improve guess x)
        (avg guess (/ x guess)))

(define (avg a b)
        (/ (+ a b) 2))

(define (good-enough? guess x)
        (< (abs (- guess (improve guess x))) (/ guess 200)))

(define (sqrt x)
        (sqrt-iter 1.0 x))

(sqrt 10000)