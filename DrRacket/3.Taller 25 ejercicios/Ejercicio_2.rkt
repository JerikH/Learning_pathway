#lang racket
;Fecha de publicación: 29/03/2021
;Fecha de creación: 25/03/2021
;Hora de creación: 22:05 pm
;versión del código: 1.0
;Autor: Ing(c).Jerik David Hincapie Bedoya
;Lenguaje utilizado: DrRacket
;Versión del lenguaje utilizado: 8.0
;Presentado a: PhD Ricardo Moreno Laverde
;Universidad Tecnológica de Pereira
;Programa de Ingeniería de Sistemas y Computación
;Este programa imprime los valores de la serie de Fibonacci entre el 0 inclusive y el 100 no inclusive, seguido el valor resultante de la suma de estos números generados.
;Salvedad: Este programa está construido para hacer exactamante lo solicitado al ejecutarlo, sin efectuar
;cambios en ningún lugar del código, no está pensado para otras funciones.

(define x 0); x = variable empleada para almacenar el nuevo valor de la serie de fibonacci
(define P1 0); P1 = variable empleada para almacenar el número de la posición n-2 para construir la serie de fibonacci
(define P2 1); P2 = variable empleada para almacenar el número de la posición n-1 para construir la serie de fibonacci
(define u 0); u = variable empleada para almacenar el valor de la suma de los números generados. 
(define (print P1 P2); inicio de la definición de la función que imprimirá los dos primeros valores de la serie de fibonacci
  (printf "~a, " P1)
  (printf "~a, " P2)
  (fibo 0 1)
); fin de la definición de la función
(define (fibo P1 P2); inicio de la definición de la función que calculará los valores de la serie de fibonacci e imprime el nuevo valor resultante  siempre < 100
  (if (>= x 89)
      (printf "y su suma es ~a" (+ u 1))
      (begin
        (set! x (+ P1 P2))
        (set! u (+ x u))
        (set! P1 P2)
        (set! P2 x)
        (printf "~a, " x)
        (fibo P1 P2)
      )
  )
); fin de la definición de la función
(displayln "Este programa presenta la suma de los elementos de la serie de Fibonacci entre 0 y 100.
Los números a sumar son:")
(print 0 1)