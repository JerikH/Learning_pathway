#lang racket
;Fecha de publicación: 29/03/2021
;Fecha de creación: 26/03/2021
;Hora de creación: 20:00 pm
;versión del código: 1.2
;Autor: Ing(c).Jerik David Hincapie Bedoya
;Lenguaje utilizado: DrRacket
;Versión del lenguaje utilizado: 8.0
;Presentado a: PhD Ricardo Moreno Laverde
;Universidad Tecnológica de Pereira
;Programa de Ingeniería de Sistemas y Computación
;Este programa imprime un arreglo de números en el cual los digitos de la primera columna, tienen incrementos de n+1 constantes y
;los digitos de la segunda columna, tienen incrementos de n+1 tras cada dos filas. Así
;0 1
;1 1
;2 2
;3 2
;4 3
;5 3
;6 4
;7 4
;8 5
;9 5

;Salvedad: Este programa está construido para hacer exactamante lo solicitado al ejecutarlo, sin efectuar
;cambios en ningún lugar del código, no está pensado para otras funciones.

(define (print n n1 co c);inicio de la definición de la función que realiza el conteo del incremento de las filas en la impresión
  (if (<= co 9)
      (pri1 n n1 co c)
      (void)
  )
);fin de la definición de la función
(define (pri1 n n1 co c);inicio de la definición de la función que imprime el digito de la primera columna, con incrementos de n+1 constantes
  (printf "~a " n)
  (set! n (+ n 1))
  (pri2 n n1 co c)
);fin de la definición de la función
(define (pri2 n n1 co c);inicio de la definición de la función que imprime el digito de la segunda columna, con incrementos de n+1 tras cada dos filas
  (if (> c 2)
      (begin
        (set! n1 (+ n1 1))
        (printf "~a\n" n1)
        (set! c 2)
      )
      (begin
        (printf "~a\n" n1)
        (set! c (+ c 1))
      )
  )
  (set! co (+ co 1))
  (print n n1 co c)
);fin de la definición de la función

(define n 0); n = variable empleada para almacenar el número a imprimir en el respectivo ciclo de la función (pri1)
(define n1 1);n1 = variable empleada para almacenar el número a imprimir en el respectivo ciclo de la función (pri2)
(define co 0);co = variable empleada para ser usada como contador de las filas a imprimir
(define c 1);c = variable empleada para ser usada como disparador del incremento en la variable n1 dentro de la función (pri2)
(print n n1 co c)