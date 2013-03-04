(let* 
    ([x 1]
  [y 2]
  [z (+ x y)])
  (+ x y z))
(map (lambda (x) (* x x)) '(1 2 3 4))