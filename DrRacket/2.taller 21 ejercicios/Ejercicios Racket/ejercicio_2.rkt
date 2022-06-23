#lang racket
;Fecha de creación: 2021/27/02
;Hora de creación: 02:35pm
;autor: Ing(c).Jerik David Hincapie Bedoya
;presentado a: PhD.Ricardo Moreno Laverde
;lenguaje: DrRacket.
;versión de DrRacket: 8.0.0
;versión de programa: 1.0
;Nombre del SO: Microsoft Windows 10 pro
;versión de SO: 10.0.18363 compilación 18363
;Universidad Tecnológica de Pereira.
;Programa de Ingeniería de Sistemas y Computación.
;Este programa solicita al usuario un número y le dice si este es par o no.
;Programa construido para correcto funcionamiento SOLO con números enteros
;Para cualquier otro valor no se asegura resultado.

(displayln "Este programa, lee un número e imprime si es par o impar")
(display "Entre un número: ")
(define Dato (read));Dato = identificador empleado para almacenar el número entrado por el usuario
(if (= (remainder Dato 2) 0)
    (display "El número es par.")
    (display "El número no es par.")
)