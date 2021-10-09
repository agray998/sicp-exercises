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

(define (cube-root guess x)
        (if (good-enough? guess x)
            guess
            (cube-root (improve guess x) x)))

(cube-root 3.0 64)

