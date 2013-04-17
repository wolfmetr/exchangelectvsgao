(define (rev2 x y)
  (cond [(empty? x) y]
        [(not(list? x)) x]
        [ #t (rev2 (cdr x)(cons (rev2 (car x) '()) y)) ]
        ))

(define (lev1 x y)
  (cond
    [(empty? x) y]
    [(not (list? x)) (cons x y)]
    [#t (lev1 (cdr x)
              (append(lev1 (car x) '()) y)) ]
    ))

(define (akkerman x y)
  (cond
    [( = x 0) (+ y 1) ]
    [( = y 0) (akkerman (- x 1) 1) ]
    [#t (akkerman (- x 1) (akkerman x (- y 1))) ]
    ))
(akkerman 2 1)

(define (rever x)
  (cond 
    [(empty? x) x]
    [(empty? (cdr x)) x]
    [#t (cons 
         (car (rever (cdr x)))
         (rever (cons (car x)
                      (rever 
                       (cdr
                        (rever (cdr x)))))))] ))
;(rever '(1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17))

(define (sort x)
  (cond 
    [(empty? x) x]
    [(not(list? x)) x]
    [#t sort
    