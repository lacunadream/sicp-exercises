(define (find_largest a b c)
  (if (and (> a b) (> a c)) 
    a
    (if (> b c)
      b
      c
    )
  ))

(define (find_smallest a b c)
  (if (and (< a b) (< a c)) 
    a
    (if (< b c)
      b
      c
    )
  ))

(define (find_second_largest a b c)
  (- (+ a b c) (find_largest a b c) (find_smallest a b c)))

(define (square_largest a b c)
  (* (find_largest a b c) (find_largest a b c)
    ))

(define (square_second_largest a b c)
  (* (find_second_largest a b c) (find_second_largest a b c)
    ))

(define (sum_square_two_largest a b c)
  (+ (square_largest a b c) (square_second_largest a b c)))

(sum_square_two_largest 5 8 10)
(sum_square_two_largest 1 2 3)
(sum_square_two_largest -5 0 10)