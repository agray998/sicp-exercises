## Exercise 1.1: given the following sequence of expressions, what result is printed for each expression.  
```
10  
(+ 5 3 4)  
(- 9 1)  
(/ 6 2)  
(+ (* 2 4) (- 4 6))  
(define a 3)  
(define b (+ a 1))  
(+ a b (* a b))  
(= a b)  
(if (and (> b a) (< b (* a b)))  
    b  
    a)  
(cond ((= a 4) 6)  
      ((= b 4) (+ 6 7 a))  
      (else 25))  
(+ 2 (if (> b a) b a))  
(* (cond ((> a b) a)  
         ((< a b) b)  
         (else -1))  
   (+ a 1))  
```
Solutions:  
```
10  
12  
8  
3  
6  
sets var a with val 3  
sets var b with val 4  
10  
false  
4  
16  
6  
16
```