;2. 
(define (sum-up-numbers-simple L)
         ((NULL? L) 0 ;checks to see if the list empty or null
         (NOT (LIST? L) ) 0 ;checks to see if L is actually list
         (+ (CAR L) (sum-up-numbers-simple (CDR L))) ))
;adds the 1st item in the list and adds the remaining.