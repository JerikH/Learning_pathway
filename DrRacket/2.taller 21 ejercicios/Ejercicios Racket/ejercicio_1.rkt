#lang racket
;Fecha de creación: 2021/26/02
;Hora de creación: 11:05am
;autor: Ing(c).Jerik David Hincapie Bedoya
;presentado a: PhD.Ricardo Moreno Laverde
;lenguaje: DrRacket.
;versión de DrRacket: 8.0.0
;versión de programa: 1.0
;Nombre del SO: Microsoft Windows 10 pro
;versión de SO: 10.0.18363 compilación 18363
;Universidad Tecnológica de Pereira.
;Programa de Ingeniería de Sistemas y Computación.
;Este programa solicita al usuario un número entre 1 y 5, y le dice si este es primo o no.
;Programa construido para funcionamiento correcto SOLO dentro del margen establecido.
;Para cualquier otro valor no se asegura resultado.

(displayln "Este programa, lee un número entre uno(1) y cinco(5), e imprime si es primo o no.")
(display "Entre un número: ")
(define Dato (read)); Dato = Identificador empleado para almacenar el número ingresado por el usuario.
(if (or(= Dato 2) (= Dato 3) (= Dato 5))
    (display "El número es primo.")
    (display "El número no es primo.")
)