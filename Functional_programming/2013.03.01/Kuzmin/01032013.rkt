(define (sort-list l)
  (define first-element (if (not (null? l)) (car l) 0))
  (cond ((null? l) (quote ()))
        (else (cons (findsmall l first-element) (sort-list (removeelem l (findsmall l first-element)))))))

(define findsmall
    (lambda (tl b)
      (cond ((null? tl) b)
            ((< (car tl) b) (set! b (car tl)) (findsmall (cdr tl) b))
            (else (findsmall (cdr tl) b)))))

(define removeelem
    (lambda (tl2 a)
      (cond ((null? tl2) (quote ()))
            ((= a (car tl2)) (cdr tl2))
            (else (cons (car tl2) (removeelem (cdr tl2) a))))))