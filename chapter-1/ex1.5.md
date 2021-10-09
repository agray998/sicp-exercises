## Exercise 1.5: Given the following two procedures to test whether an interpreter utilises applicative-order or normal-order evaluation, describe and explain the observed results in each case.  
'''
(define (p) (p))

(define (test x y)
        (if (= x 0)
            0
            y))
'''
Using applicative-order evaluation, the if statement predicate, x and y will be evaluated, giving true, 0 and (p) respectively. Since the predicate is true, the procedure will return 0 and stop. Under normal-order evaluation, since the interpreter will attempt to fully expand the definition of test, it will go into an infinite loop of substituting (p) for (p).