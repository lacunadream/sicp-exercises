; (define (sqrt-iter guess x)
;   (if (good-enough? guess x)
;     guess
;     (sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

; (define (good-enough? guess x)
;   (< (abs (- (square guess) x)) 0.001))

(define (square x)
  (* x x))

(define (sqrt x)
  (sqrt-iter 1.0 x))


; Issues: 
; small numbers: 0.001 is really big for small numbers - not precise
; large numbers: when numbers are really large, improvements keep yieling the same results because the 
; average procedure is unable to express the number more precisely. 

(define (good-enough? old new)
  (< (abs (/ (- new old) old)) 0.0001))
  

(define (sqrt-iter guess x)
  (if (good-enough? guess (improve guess x))
    guess
    (sqrt-iter (improve guess x) x)))


(sqrt 100)