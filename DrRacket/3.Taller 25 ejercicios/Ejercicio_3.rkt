#lang racket
;Fecha de publicación: 29/03/2021
;Fecha de creación: 25/03/2021
;Hora de creación: 22:45 pm
;versión del código: 1.0
;Autor: Ing(c).Jerik David Hincapie Bedoya
;Lenguaje utilizado: DrRacket
;Versión del lenguaje utilizado: 8.0
;Presentado a: PhD Ricardo Moreno Laverde
;Universidad Tecnológica de Pereira
;Programa de Ingeniería de Sistemas y Computación
;Este programa imprime todo número entero que se le ingrese, al revés.
;Salvedad: Este programa está construido para hacer exactamante lo solicitado al ejecutarlo, sin efectuar
;cambios en ningún lugar del código, no está pensado para otras funciones, se garantiza resultado SOLO con números enteros.

(define (print nu n P L);inicio de la definición de la función que procesa e imprime al revés el número ingresado
  (if (> nu 0)
      (begin
        (if (> n L)
            (void)
            (begin
              (display (string-ref (~a nu) (- P 1)))
              (set! P (- P 1))
              (set! n (+ n 1))
              (print nu n P L)
            )
        )
      )
      (begin
        (if (> n (- L 1))
            (void)
            (begin
              (display (string-ref (~a nu) (- P 1)))
              (set! P (- P 1))
              (set! n (+ n 1))
              (print nu n P L)
            )
        )
      )
  )
);fin de la definición de la función

(display "Este programa lee desde el teclado un número
entero y lo imprime al revés.
\nEntre el número:\n")
(define nu (read));nu = variable empleada para almacenar el número ingresado por el usuario
(define n 1);n = variable empleada como contador para ejecutar los ciclos
(define L (string-length (~a nu)));L = variable empleada para almacenar la longitud del número ingresado
(define P L);P = variable empleada para almacenar lo que contiene la variable L
(if (> nu 0)
    (void)
    (display "-")
)
(print nu n P L)