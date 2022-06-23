#lang racket
;Fecha de creación: 2021/02/03
;Hora de creación: 06:25pm
;autor: Ing(c).Jerik David Hincapie Bedoya
;presentado a: PhD.Ricardo Moreno Laverde
;lenguaje: DrRacket.
;versión de DrRacket: 8.0.0
;versión de programa: 1.0
;Nombre del SO: Microsoft Windows 10 pro
;versión de SO: 10.0.18363 compilación 18363
;Universidad Tecnológica de Pereira.
;Programa de Ingeniería de Sistemas y Computación.
;Este programa solicita al usuario tres números e imprime si la multiplicación de los dos primeros es igual al tercero
;Programa construido para dar respuesta solo cuando la condición se cumple

(displayln "Este programa, solicita tres(3) números e imprime si la multiplicación de los dos primeros es igual al tercero")
(display "Entre el primer número ")
(define N_1 (read));N_1 = Variable empleada para almacenar el primer número ingresado por el usuario
(display "Entre el segundo número ")
(define N_2 (read));N_2 = Variable empleada para almacenar el segundo número ingresado por el usuario
(display "Entre el tercer número ")
(define N_3 (read));N_3 = Variable empleada para almacenar el tercer número ingresado por el usuario
(if (= (* N_1 N_2) N_3)
    (display "La multiplicación de los dos primeros números si es igual al tercer número")
    (void)
)