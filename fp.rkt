
;2. 
(define (sum-up-numbers-simple L)
         (cond
          ((null? L) 0) ;checks to see if list is empty return zero
          ((not (list? L)) L) ; if item is not a list return the item
          ((+ (car L) (sum-up-numbers-simple (cdr L))) ))) ; return the first item in the list and add the rest of the numbers
