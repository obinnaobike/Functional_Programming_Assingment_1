;1.
(define (reverse-general L)
  (cond
    ;((null? L) '()) if the list is empty return an empty list
    ((list? L)
    (append (reverse-general (cdr L)) 
            (list (reverse-general (car L)))
            )
    );
    ;(not (list? L)) if there is only 1 item in the list return l
    )
  )

;2. 
(define (sum-up-numbers-simple L)
         (cond
          ((null? L) 0) ;checks to see if list is empty return zero
          ((not (list? L)) L) ; if item is not a list return the item
          ((+ (car L) (sum-up-numbers-simple (cdr L))) ))) ; return the first item in the list and add the rest of the numbers
