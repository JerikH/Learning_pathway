#lang racket
(define (imprima valor)
  (if (>= valor 1)
      (begin
        (void)
        (imprima {- valor 1})
      )
     (printf "~a " valor)
  )
)
(imprima 5)