
(define (square x)
  (* x x))

(define (improve guess x)
  (/ (+ (/ x (square guess)) guess guess) 3))

(define (average x y)
  (/ (+ x y) 2))

; (define (good-enough? guess x)
;   (< (abs (- (square guess) x)) 0.001))


(define (cbrt x)
  (sqrt-iter 1.0 x))


(define (good-enough? old new)
  (< (abs (/ (- new old) old)) 0.0001))
  

(define (sqrt-iter guess x)
  (if (good-enough? guess (improve guess x))
    guess
    (sqrt-iter (improve guess x) x)))


(cbrt 125)