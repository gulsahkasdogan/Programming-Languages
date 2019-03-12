(define (foo lst)
  (foo_aux lst 0)
)

(define (foo_aux lst aux)
  (cond
    ((null? lst) aux)
    ((list? (car lst)) (foo_aux (cdr lst) (+ aux (foo (car lst))))) 
    (else (foo_aux (cdr lst) (+ aux 1)));atom
   )
)

(foo '(1 2 3 4 5 6 7 8))
(foo '(3 4 (1 2 5 6) 7 (8)))
(foo '((1 2) (3 4) 5 6 (7 8)))
(foo '((1) 2 (3) 4 (5) 6 (7) 8))
(foo '(1 (2) 3 (4) 5 (6) 7 (8)))
(foo '((1 2 3 4 5 6 7 8)))
(foo '(((1 (2) 3 (4)) 5 6) 7 (8)))
