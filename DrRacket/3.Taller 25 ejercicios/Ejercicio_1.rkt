#lang racket
;Fecha de publicación: 29/03/2021
;Fecha de creación: 25/03/2021
;Hora de creación: 21:30 pm
;versión del código: 1.2
;Autor: Ing(c).Jerik David Hincapie Bedoya
;Lenguaje utilizado: DrRacket
;Versión del lenguaje utilizado: 8.0
;Presentado a: PhD Ricardo Moreno Laverde
;Universidad Tecnológica de Pereira
;Programa de Ingeniería de Sistemas y Computación
;Este programa imprime los valores de la serie de Fibonacci entre el 0 inclusive y el 10.000 no inclusive.
;Salvedad: Este programa está construido para hacer exactamante lo solicitado al ejecutarlo, sin efectuar
;cambios en ningún lugar del código, no está pensado para otras funciones.

(define x 0); x = variable empleada para almacenar el nuevo valor de la serie de fibonacci
(define P1 0); P1 = variable empleada para almacenar el número de la posición n-2 para construir la serie de fibonacci
(define P2 1); P2 = variable empleada para almacenar el número de la posición n-1 para construir la serie de fibonacci
(define (print P1 P2); inicio de la definición de la función que imprimirá los dos primeros valores de la serie de fibonacci
  (printf "~a, " P1)
  (printf "~a, " P2)
  (fibo 0 1)
); fin de la definición de la función
(define (fibo P1 P2); inicio de la definición de la función que calculará los valores de la serie de fibonacci e imprime el nuevo valor resultante  siempre < 10000
  (if (>= x 6765)
      (void)
      (begin
        (set! x (+ P1 P2))
        (set! P1 P2)
        (set! P2 x)
        (printf "~a, " x)
        (fibo P1 P2)
      )
  )
); fin de la definición de la función
(displayln "Este programa presenta la serie de Fibonacci como la serie que comienza con los dígitos 1 y 0 y va
sumando progresivamente los dos últimos elementos de la serie, así: 0 1 1 2 3 5 8 13 21 34.......
Para este programa, se presentará la serie de Fibonacci hasta llegar sin sobrepasar el número 10,000.")
(print 0 1)