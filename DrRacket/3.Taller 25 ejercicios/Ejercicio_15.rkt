#lang racket
;Fecha de publicación: 29/03/2021
;Fecha de creación: 28/03/2021
;Hora de creación: 02:25 am
;versión del código: 2.2
;Autor: Ing(c).Jerik David Hincapie Bedoya
;Lenguaje utilizado: DrRacket
;Versión del lenguaje utilizado: 8.0
;Presentado a: PhD Ricardo Moreno Laverde
;Universidad Tecnológica de Pereira
;Programa de Ingeniería de Sistemas y Computación
;Este programa imprime una estructura similar a un moño formada por letras A.
;Asi.
#|
                           A     A
                           AA   AA
                           AAA AAA
                           AAAAAAA
                           AAA AAA
                           AA   AA
                           A     A
|#
;Salvedad: Este programa está construido para hacer exactamante lo solicitado al ejecutarlo, sin efectuar
;cambios en ningún lugar del código, no está pensado para otras funciones.

(define (contador es le limle co esint);inicio de la definición de la función contador, la cual se encarga de contar y limitar los saltos de linea
  (if (< co limle)
      (espacios es le limle co esint)
      (void)
  )
);fin de la definición de la función
(define (espacios es le limle co esint);inicio de la definición de la función espacios, la cual se encarga de imprimir los espacios necesarios para el respectivo ciclo
  (espaciost es le limle co esint)
  (print es le limle co esint)
);fin de la definición de la función
(define (espaciost es le limle co esint);inicio de la definición de la función espaciost, la cual permite desde diversos puntos del código imprimir los espacios iniciales de cada fila
  (printf "~a" (make-string es #\space))
);fin de la definición de la función
(define (espaciosint es le limle co esint);inicio de la definición de la función espaciosint, la cual se encarga de imprimir los espacios que hay internos en la figura
  (printf "~a" (make-string esint #\space))
);fin de la definición de la función
(define (printle es le limle co esint);inicio de la definición de la función printle, la cual se encarga de imprimir las letras A según sea necesario en el respectivo ciclo
  (printf "~a" (make-string le #\A))
);fin de la definición de la función
(define (print es le limle co esint);inicio de la definición de la función print, la cual se encarga de imprimir la estructura de la figura
  (if (>= co 4)
      (begin
        (if (>= co 6)
            (begin
              (set! le (- le 1))
              (set! co (+ co 1))
              (printle es le limle co esint)
              (set! esint (+ esint 2))
              (espaciosint es le limle co esint)
              (printle es le limle co esint)
              (newline)
              (contador es le limle co esint)
              
            )
            (begin
              (printle es 7 limle co esint)
              (set! co (+ co 1))
              (newline)
              (espaciost es le limle co esint)
              (printle es le limle co esint)
              (espaciosint es le limle co 1)
              (printle es le limle co esint)
              (set! co (+ co 1))
              (newline)
              (contador es le limle co esint)
            )
        ) 
      )
      (begin
        (set! le (+ le 1))
        (set! esint (- esint 2))
        (printle es le limle co esint)
        (espaciosint es le limle co esint)
        (printle es le limle co esint)
        (newline)
        (set! co (+ co 1))
        (espacios es le limle co esint)
      )
  )
);fin de la definición de la función

(define limle 8);limle = variable empleada en la función (contador) para establecer la cantidad de saltos de linea que deben hacerse
(define es 27);es = variable empleada en la función (espacios) para definir los espacios que se deben imprimir para el respectivo ciclo
(define esint 7);esint = variable empleada empleada para almacenar la cantidad de espacios internos que se deben imprimir
(define le 0);le = variable empleada en la función (print) para definir la cantidad de letras que se deben imprimir para el respectivo ciclo
(define co 1);co = variable empleada en la función (contador) para almacenar los incrementos del conteo de los saltos de linea
(contador es le limle co esint)