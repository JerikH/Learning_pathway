#lang racket
;Fecha de publicación: 29/03/2021
;Fecha de creación: 26/03/2021
;Hora de creación: 22:10 pm
;versión del código: 1.3
;Autor: Ing(c).Jerik David Hincapie Bedoya
;Lenguaje utilizado: DrRacket
;Versión del lenguaje utilizado: 8.0
;Presentado a: PhD Ricardo Moreno Laverde
;Universidad Tecnológica de Pereira
;Programa de Ingeniería de Sistemas y Computación
;Este programa imprime un arreglo de números en el cual los digitos de la primera columna, tienen incrementos de n+1 constantes;
;los digitos de la segunda columna, tienen incrementos de n+1 tras cada tres filas; y los digitos de la tercera columna, tienen
;incrementos de n+1 hasta 3 inclusive, para iniciar en 1 de nuevo. Así
;1 1 1
;2 1 2
;3 1 3
;4 2 1
;5 2 2
;6 2 3
;7 3 1
;8 3 2
;9 3 3

;Salvedad: Este programa está construido para hacer exactamante lo solicitado al ejecutarlo, sin efectuar
;cambios en ningún lugar del código, no está pensado para otras funciones.

(define (cont n n1 n2 co c c1);inicio de la definición de la función que realiza el conteo del incremento de las filas en la impresión
  (if (< co 9)
      (pri1 n n1 n2 co c c1)
      (void)
  )
);fin de la definición de la función
(define (pri1 n n1 n2 co c c1);inicio de la definición de la función que imprime el digito de la primera columna, con incrementos de n+1 constantes
  (print n)
  (set! n (+ n 1))
  (pri2 n n1 n2 co c c1)
);fin de la definición de la función
(define (pri2 n n1 n2 co c c1);inicio de la definición de la función que imprime el digito de la segunda columna, con incrementos de n+1 tras cada tres filas
  (if (> c 2)
      (begin
        (set! n1 (+ n1 1))
        (print2 n1)
        (set! c 1)
      )
      (begin
        (print2 n1)
        (set! c (+ c 1))
      )
  )
  (set! co (+ co 1))
  (pri3 n n1 n2 co c c1)
);fin de la definición de la función
(define (pri3 n n1 n2 co c c1);inicio de la definición de la función que imprime el digito de la tercer columna, con incrementos de n+1 hasta 3 inclusive, para iniciar en 1 de nuevo.
  (if (< c1 3)
      (begin
        (print3 n2)
        (set! n2 (+ n2 1))
        (set! c1 (+ c1 1))
        (cont n n1 n2 co c c1)
      )
      (begin
        (set! n2 1)
        (set! c1 1)
        (print3 n2)
        (set! n2 (+ n2 1))
        (cont n n1 n2 co c c1)
      )
  )
);fin de la definción de la función
(define (print n);inicio de la definición de la función que ejecuta la impresión dentro de la función (pri1)
  (printf "~a " n)
);fin de la definción de la función
(define (print2 n1);inicio de la definición de la función que ejecuta la impresión dentro de la función (pri2)
  (printf "~a " n1)
);fin de la definción de la función
(define (print3 n2);inicio de la definición de la función que ejecuta la impresión dentro de la función (pri3)
  (printf "~a\n" n2)
);fin de la definción de la función

(define n 1); n = variable empleada para almacenar el número a imprimir en el respectivo ciclo de la función (pri1)
(define n1 1);n1 = variable empleada para almacenar el número a imprimir en el respectivo ciclo de la función (pri2)
(define co 0);co = variable empleada para ser usada como contador de las filas a imprimir
(define c 0);c = variable empleada para ser usada como disparador del incremento en la variable n1 dentro de la función (pri2)
(define c1 0);c1 = variable empleada para ser usada como disparador del reinicio del conteo en la función (pri3)
(define n2 1);n2 = variable empleada para almacenar el número a imprimir en el respectivo ciclo de la función (pri3) 
(cont n n1 n2 co c c1)