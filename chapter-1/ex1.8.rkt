#lang sicp
#| Exercise 1.8: Define a procedure that implements Newton's
method for calculating cube roots. |#

(define (sq x)
        (* x x))

(define (improve guess x)
        (/ (+ (/ x (sq guess)) (* 2 guess))
           3))

(define (cube x)
        (* x x x))

(define (good-enough? guess x)
        (< (abs (- (cube guess) x)) 0.001))

(define (cube-root-iter guess x)
        (if (good-enough? guess x)
            guess
            (cube-root-iter (improve guess x) x)))

(define (cube-root x)
        (cube-root-iter 1.0 x))

(cube-root 64)

