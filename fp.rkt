;2. 
(define (sum-up-numbers-simple L)
         (cond
          ((null? L) 0) ;checks to see if list is empty return zero
          ((not (list? L)) (display "not a list")) ; if item is not a list display not a list
          ((+ (car L) (sum-up-numbers-simple (cdr L))) ))) ; return the first item in the list and add the rest of the numbers