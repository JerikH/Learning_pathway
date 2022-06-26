#lang racket
;Fecha de creación: 2021/09/03
;Hora de creación: 06:35pm
;autor: Ing(c).Jerik David Hincapie Bedoya
;presentado a: PhD.Ricardo Moreno Laverde
;lenguaje: DrRacket.
;versión de DrRacket: 8.0.0
;versión de programa: 1.0
;Nombre del SO: Microsoft Windows 10 pro
;versión de SO: 10.0.18363 compilación 18363
;Universidad Tecnológica de Pereira.
;Programa de Ingeniería de Sistemas y Computación.
;Este programa solicita al usuario tres números y regresa el resultado de la formula ax^2+bx+c=0.

(define (r1_cua a b c); se define la primera función r1_cua
  (/ (+ (* -1 b) [sqrt {+ {sqr b} {* -1 4 a c}}]) {* 2 a})
)
(define (r2_cua a b c); se define la segunda función r2_cua
  (/ (- (* -1 b) [sqrt {+ {sqr b} {* -1 4 a c}}]) {* 2 a})
)

(displayln "Programa que contiene las funciones --- (r1_cua a b c) y la función (r2_cua a b c)Que calcula los valores de x tal que al aplicarlas sobre la función de la forma ax^2+bx+c=0, Hacen que se cumpla.")
(display "Por favor entre el valor del coeficiente a : ")
(define a (read))
(display "Por favor entre el valor del coeficiente b : ")
(define b (read))
(display "Por favor entre el valor del termino independiente ó coeficiente c: ")
(define c (read))
(printf "r1 = ~a\n" (r1_cua a b c))
(printf "r2 = ~a\n" (r2_cua a b c))