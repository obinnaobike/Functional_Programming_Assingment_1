2. (define (sum-up-numbers-simple L)
         (if (NULL? L)              0
         (NOT (LIST? L) 0)
         (+ (CAR L) (sum-up-numbers-simple (CDR L))) ));