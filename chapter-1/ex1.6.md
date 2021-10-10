## Exercise 1.6: Given the following alternative if implentation based on cond, explain how the behaviour of a square-root implementation based on this new if would differ.  
```
(define (new-if predicate then-clause else-clause)
        (cond (predicate then-clause)
              (else else-clause)))
```
Solution:  
The program would go into an infinite loop. As explained in ex1.5, under applicative-order evaluation procedures will attempt to fully evaluate their arguments before applying the steps of the procedure. The if statement is a special form in which this does not happen; the predicate is evaluated first and then either the consequent or the alternate (not both) is evaluated. Since the new-if defined above is a procedure, it will use applicative-order evaluation and attempt to evaluate both the then-clause and else-clause (which are given as arguments) before proceeding to evaluate the cond statement. Since the definition of the sqrt-iter function is recursive, this will produce an infinite loop of attempts to evaluate sqrt-iter, as with the (p) procedure in 1.5.