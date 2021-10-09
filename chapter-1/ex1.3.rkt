#lang sicp
#| Exercise 1.3: Define a procedure that takes three numbers as arguments, 
and returns the sum of the squares of the two larger numbers |#

(define (sq x)
        (* x x))

(define (sum-of-sqs x y)
        (+ (sq x) (sq y)))

(define (sum-max-sqs x y z)
        (cond ((and (< x y) (< x z)) (sum-of-sqs y z))
              ((and (< y x) (< y z)) (sum-of-sqs x z))
              (else (sum-of-sqs x y))))