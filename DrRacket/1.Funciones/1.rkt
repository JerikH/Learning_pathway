#lang racket
(define daniel (read))
(define (pollito daniel)
  (if (= daniel 3)
      (display daniel)
      ( begin
         (display daniel)
         (pollito (+ 1 daniel))
      )
  )
)
(pollito daniel)