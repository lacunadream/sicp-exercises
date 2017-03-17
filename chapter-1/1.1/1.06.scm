; new-if's then-clause and else-clauses are both evaluated under applicative order. 
; This leads to infite loops

; Under a standard if procedure, the predicate is first evaluated before the expressions are