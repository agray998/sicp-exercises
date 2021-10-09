## Exercise 1.4: Using the observation that the substitution model allows for operators which are themselves compound expressions, describe the behaviour of the following procedure.  
```
(define (a-plus-abs-b a b)
        ((if (> b 0) + -) a b))
```
When given arguments a and b, the procedure will evaluate the operator for the expression, which will evaluate to + if b is positive and - otherwise, and the two values a and b. This operator is then applied to a and b, so that if b is positive we get a + b and otherwise we get a - b (equivalent to adding abs(b)).