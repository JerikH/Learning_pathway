#lang racket
(define (plural cadena)
  (if [equal? '#\y (string-ref cadena {- (string-length cadena)1})]
      (begin
        (pollito cadena 1 (string-length cadena))
        (display "ies")
      )
      (printf "~as" cadena)
  )
)
(define (pollito dato inicio final)
  (if (< inicio final)
      (begin
        (display (string-ref dato (- inicio 1)))
        (pollito dato (+ inicio 1) final)
      )
      (void)
  )
)
(display (plural "baby"))