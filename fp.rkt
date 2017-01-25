
;2. 
(define (sum-up-numbers-simple L)
         (cond
          ((null? L) 0) ;checks to see if list is empty return zero
          ((not (list? L)) (display "not a list")) ; if item is not a list display not a list
          (else (eval (cons '+ L))); this is supposed to evaluate the list by adding a + sign so (1 2) becomes (+ 1 2) which evaluates to 3.
          ;((+ (car L) (sum-up-numbers-simple (cdr L))) ))) ; return the first item in the list and add the rest of the numbers
