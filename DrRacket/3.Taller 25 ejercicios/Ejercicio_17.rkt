#lang racket
;Fecha de publicación: 29/03/2021
;Fecha de creación: 28/03/2021
;Hora de creación: 09:10 am
;versión del código: 1.0
;Autor: Ing(c).Jerik David Hincapie Bedoya
;Lenguaje utilizado: DrRacket
;Versión del lenguaje utilizado: 8.0
;Presentado a: PhD Ricardo Moreno Laverde
;Universidad Tecnológica de Pereira
;Programa de Ingeniería de Sistemas y Computación
;Este programa imprime una estructura formada por letras Z.
;Asi.
#|
Z                 Z
 Z               Z
  Z             Z
   Z           Z
    Z         Z
     Z       Z
      Z     Z
       Z   Z
        Z Z
         Z
|#
;Salvedad: Este programa está construido para hacer exactamante lo solicitado al ejecutarlo, sin efectuar
;cambios en ningún lugar del código, no está pensado para otras funciones.

(define (contador es esint co fin);inicio de la definición de la función contador, la cual se encarga de contar y limitar los saltos de linea
  (if (< co fin)
      (if (= co 9)
          (printu es esint co fin)
          (print es esint co fin)
      )
      (void)
  )
);fin de la definición de la función
(define (print es esint co fin);inicio de la definición de la función print, la cual se encarga de imprimir las letras Z en las posiciones adecuadas desde el inicio hasta el final-1
  (printf "~aZ~aZ" (make-string es #\space) (make-string esint #\space))
  (set! es (+ es 1))
  (set! esint (- esint 2))
  (set! co (+ co 1))
  (newline)
  (contador es esint co fin)
);fin de la definición de la función
(define (printu es esint co fin);inicio de la definición de la función printu, la cual se encarga de imprimir la letra Z de la última fila en la posición adecuada
  (printf "~aZ" (make-string es #\space))
);fin de la definición de la función

(define es 0);es = variable empleada para definir en ella la cantidad de espacios externos a la figura que es necesario imprimir en el respectivo ciclo
(define esint 17);esint = variable empleada para definir en ella el la cantidad de espacios internos de la figura que es necesario imprimir en el respectivo ciclo
(define fin 11);fin = variable empleada en la función (contador) para definir el número de filas que tiene la figura en la forma N+1
(define co 0);co = variable empleada en la función (contador) para almacenar los incrementos del conteo de los saltos de linea
(contador es esint co fin)