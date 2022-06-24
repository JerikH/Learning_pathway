#lang racket
;Fecha de publicación: 29/03/2021
;Fecha de creación: 26/03/2021
;Hora de creación: 14:00 pm
;versión del código: 1.1
;Autor: Ing(c).Jerik David Hincapie Bedoya
;Lenguaje utilizado: DrRacket
;Versión del lenguaje utilizado: 8.0
;Presentado a: PhD Ricardo Moreno Laverde
;Universidad Tecnológica de Pereira
;Programa de Ingeniería de Sistemas y Computación
;Este programa imprime las tablas de multiplicar del 1 al 10.

;Salvedad: Este programa está construido para hacer exactamante lo solicitado al ejecutarlo, sin efectuar
;cambios en ningún lugar del código, no está pensado para otras funciones.

(define v 0); v = variable empleada para almacenar el número resultante de la multiplicación en el ciclo que se esté ejecutando
(define cot 1); cot = variable empleada para contar el número de tabla sobre la que se está realizando el cálculo
(define co 1); co = variable empleada para almacenar el número de factor que se lleva en la respectiva tabla

(define (tablas co cot v); inicio de la definición de la función que cálcula las tablas de multiplicar
  (if (<= cot 10)
      (if (<= co 10)
          (begin
            (set! v (* cot co))
            (printf "~a" cot)
            (display " x ")
            (printf "~a" co)
            (display " = ")
            (printf "~a\n" v)
            (set! co (+ co 1))
            (tablas co cot v)
          )
          (begin
            (newline)
            (displayln "---------------------------------")
            (set! cot (+ cot 1))
            (set! co 1)
            (tablas co cot v)
          )
      )
      (void)
  )
);fin de la definición de la función
(displayln "Este programa imprime las tablas de multiplicar del 1 al 10")
(tablas co cot v)