#lang racket
;Fecha de creación: 2021/02/03
;Hora de creación: 08:35pm
;autor: Ing(c).Jerik David Hincapie Bedoya
;presentado a: PhD.Ricardo Moreno Laverde
;lenguaje: DrRacket.
;versión de DrRacket: 8.0.0
;versión de programa: 1.0
;Nombre del SO: Microsoft Windows 10 pro
;versión de SO: 10.0.18363 compilación 18363
;Universidad Tecnológica de Pereira.
;Programa de Ingeniería de Sistemas y Computación.
;Este programa solicita al usuario tres números que representan tres notas de un alumno e imprime si esta aprobó o no el curso, esto según la siguiente característica
;si el promedio de las tres notas es mayor o igual a 3.0 aprueba el curso, en caso contrario, lo reprueba
;Programa construido para ofrecer un correcto funcionamiento solo con números naturales positivos

(displayln "Este programa, solicita tres valores equivalentes a tres(3) notas de un alumno, e imprime si este aprueba o no el curso, sabiendo que aprueba si su promedio es mayor o igual a tres (>=3,0)")
(display "Digite la primer nota: ")
(define No1 (read));No1 = Variable empleada para almacenar la primer nota del alumno
(display "Digite la segunda nota: ")
(define No2 (read));No2 = Variable empleada para almacenar la segunda nota del alumno
(display "Digite la tercer nota: ")
(define No3 (read));No3 = Variable empleada para almacenar la tercer nota del alumno
(if (>= (/(+ No1 No2 No3) 3.0) 3.0)
    (display "El alumno aprobó el curso")
    (display "El alumno reprobó el curso")
)