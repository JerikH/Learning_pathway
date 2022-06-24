#lang racket
;Fecha de publicación: 29/03/2021
;Fecha de creación: 28/03/2021
;Hora de creación: 03:55 am
;versión del código: 1.3
;Autor: Ing(c).Jerik David Hincapie Bedoya
;Lenguaje utilizado: DrRacket
;Versión del lenguaje utilizado: 8.0
;Presentado a: PhD Ricardo Moreno Laverde
;Universidad Tecnológica de Pereira
;Programa de Ingeniería de Sistemas y Computación
;Este programa imprime una estructura de rombo formada por letras Z.
;Asi.
#|
         Z
        ZZZ
       ZZZZZ
      ZZZZZZZ
       ZZZZZ
        ZZZ
         Z
|#
;Salvedad: Este programa está construido para hacer exactamante lo solicitado al ejecutarlo, sin efectuar
;cambios en ningún lugar del código, no está pensado para otras funciones.

(define (contador es le limle co);inicio de la definición de la función contador, la cual se encarga de contar y limitar los saltos de linea
  (if (< co limle)
      (if (>= co 4)
          (espaciospos es le limle co)
          (espacios es le limle co)
      )
      (void)
  )
);fin de la definición de la función
(define (espacios es le limle co);inicio de la definición de la función espacios, la cual se encarga de imprimir los espacios necesarios para el respectivo ciclo en la mitad superior de la figura
  (espaciost es le limle co)
  (set! es (- es 1))
  (print es le limle co)
);fin de la definición de la función
(define (espaciospos es le limle co);inicio de la definición de la función espaciospos, la cual se encarga de imprimir los espacios necesarios para el respectivo ciclo en la mitad inferior de la figura
  (espaciost es le limle co)
  (set! es (+ es 1))
  (printneg es le limle co)
);fin de la definición de la función
(define (espaciost es le limle co);inicio de la definición de la función espaciost, la cual permite desde diversos puntos del código imprimir los espacios iniciales de cada fila
  (printf "~a" (make-string es #\space))
);fin de la definición de la función
(define (print es le limle co);inicio de la definición de la función print, la cual se encarga de imprimir las letras Z para el respectivo ciclo en la mitad superior de la figura
  (printf "~a\n" (make-string le #\Z))
  (set! le (+ le 2))
  (set! co (+ co 1))
  (contador es le limle co)
);fin de la definición de la función
(define (printneg es le limle co);inicio de la definición de la función printneg, la cual se encarga de imprimir las letras Z para el respectivo ciclo en la mitad inferior de la figura
  (printf "~a\n" (make-string le #\Z))
  (set! le (- le 2))
  (set! co (+ co 1))
  (contador es le limle co)
);fin de la definición de la función

(define es 9);es = variable empleada en la función (espacios) para definir los espacios que se deben imprimir para el respectivo ciclo
(define le 1);le = variable empleada en la función (print) para definir la cantidad de letras que se deben imprimir para el respectivo ciclo
(define limle 8);limle = variable empleada en la función (contador) para establecer la cantidad de saltos de linea que deben hacerse
(define co 1);co = variable empleada en la función (contador) para almacenar los incrementos del conteo de los saltos de linea
(contador es le limle co)