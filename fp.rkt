;1.
(define (reverse-general L)
  (cond
    ((null? L) '()) ;if the list is empty return an empty list
    ((not (list? L)) L) ;if there is only 1 item in the list return L
    ((list? L)
    (append (reverse-general (cdr L)) 
            (list (reverse-general (car L)))
            )
    ); concatenate the very last elements of the list first then the last element of the list
    )
)

;2. 

(define (sum-up-numbers-simple L)
         (cond
          ((null? L) 0) ;checks to see if list is empty return zero
          ((not (list? L)) L) ; if item is not a list return the item
          ((not (number? (car L))) (sum-up-numbers-simple (cdr L))) ; if the item is not a number check if the rest of the list is a number
((+ (car L) (sum-up-numbers-simple (cdr L)))))) ; return the first item in the list and add the rest of the number

;3

(define (sum-up-numbers-simple L)
  (cond 
  ((null? L) '() ; if the list is empty or null return an empty list
      ((list? (car L)) ;if the first item in the list is a list
          (+ (sum-up-numbers-simple (car L)) (sum-up-numbers-simple (cdr L))) 
;call the function recursively on the first item in the list and call it on the rest of the items in the list
          (+ (car L) (sum-up-numbers-simple (cdr L)))))) 
; otherwise add the first item in the list to the rest of the items in the list

;4.

(define (min-above-min L1 L2)
(let 
minimum-L1 (min(L1)) ; set the variable minimum-L1 to min of l1
(let minimum-L2 (min(L2)))
	(cond
	((null? L1) #f) ; if list L1 is empty return false
	((null? L2) minimum-L1) ; if list l2 is empty return mimimum-L1
	(( >= (minimum-L2) (minimum-L1) #f) ; if the minimum of l2 is greater than or equal to minimum of l1 return false.
	(( < (minimum-L2) (minimum-L1) minimum-L1))) ;else return minimum of l1
