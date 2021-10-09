## Exercise 1.6: Given the following alternative if implentation based on cond, explain how the behaviour of a square-root implementation based on this new if would differ.  
```
(define (new-if predicate then-clause else-clause)
        (cond (predicate then-clause)
              (else else-clause)))
```
Solution:  
The standard if expression will evaluate the predicate first. If it is true, the consequent will be evaluated, otherwise the alternate will be evaluated. In this alternative if implementation, the provided predicate will be evaluated first, if it is true then the then clause will be evaluated, if not then else will be evaluated, which will evaluate to true and lead to the else-clause being evaluated.