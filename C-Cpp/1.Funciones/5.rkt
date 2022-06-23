#lang racket
(define un -1)
(define dn -2)
(define a (sqrt (+ (sqr (- un 0)) (sqr (- 1 dn)))))
(define b (sqrt (+ (sqr (- 0 3)) (sqr (- dn un)))))
(define c (sqrt (+ (sqr (- 3 un)) (sqr (- un 1)))))
(define p (/ (+ a b c) 2))
(displayln (sqrt (* p (- p a) (- p b) (- p c))))