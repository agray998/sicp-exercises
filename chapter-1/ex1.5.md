## Exercise 1.5: Given the following program with two procedures to test whether an interpreter utilises applicative-order or normal-order evaluation, describe and explain the observed results in each case.  
```
(define (p) (p))

(define (test x y)
        (if (= x 0)
            0
            y))

(test 0 (p))
```
Solution:
Using applicative-order evaluation, the test function will attempt to fully evaluate its' arguments before evaluating the if statement. Since (p) evaluates to (p), this will produce an infinite loop of attempts to evaluate (p), and the program will never terminate. Under normal-order evaluation, the if-statement will be fully expanded and the predicate evaluated before any attempt is made to evaluate (p). Since the condition in the given test case is true, the consequent (0) will be evaluated, and the infinitely recursive alternate (p) will not, so the program will print 0 and terminate.