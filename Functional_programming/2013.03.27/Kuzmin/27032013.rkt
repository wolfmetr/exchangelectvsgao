;(define inp (open-input-file "dat" #:mode 'text'))
#lang racket
(current-directory)
(define outp (open-output-file "dat" #:mode 'text #:exists 'replace))
