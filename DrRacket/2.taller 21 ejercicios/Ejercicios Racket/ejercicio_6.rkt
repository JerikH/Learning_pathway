#lang racket
;Fecha de creación: 2021/01/03
;Hora de creación: 07:45pm
;autor: Ing(c).Jerik David Hincapie Bedoya
;presentado a: PhD.Ricardo Moreno Laverde
;lenguaje: DrRacket.
;versión de DrRacket: 8.0.0
;versión de programa: 1.0
;Nombre del SO: Microsoft Windows 10 pro
;versión de SO: 10.0.18363 compilación 18363
;Universidad Tecnológica de Pereira.
;Programa de Ingeniería de Sistemas y Computación.
;Este programa solicita al usuario un número e imprime si es mayor que cien(100)
;Programa construido para dar respuesta solo cuando la condición se cumple

(displayln "Este programa, solicita un número e imprime si es mayor de cien(100)")
(display "Entre un número ")
(define N (read));N = variable empleada para almacenar el número ingresado por el usuario
(if (> N 100)
    (display "El número si es mayor que cien(100)")
    (void)
)