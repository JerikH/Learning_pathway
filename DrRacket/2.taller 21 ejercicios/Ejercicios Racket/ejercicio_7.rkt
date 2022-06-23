#lang racket
;Fecha de creación: 2021/02/03
;Hora de creación: 06:15pm
;autor: Ing(c).Jerik David Hincapie Bedoya
;presentado a: PhD.Ricardo Moreno Laverde
;lenguaje: DrRacket.
;versión de DrRacket: 8.0.0
;versión de programa: 1.0
;Nombre del SO: Microsoft Windows 10 pro
;versión de SO: 10.0.18363 compilación 18363
;Universidad Tecnológica de Pereira.
;Programa de Ingeniería de Sistemas y Computación.
;Este programa solicita al usuario dos números e imprime si ambos son pares o ambos son impares
;Programa construido para dar respuesta solo cuando una de las condiciónes se cumple e ingresando cantidades naturales

(displayln "Este programa, lee dos(2) números, e imprime si ambos son pares o ambos son impares")
(display "Entre el primer numero ")
(define N_1 (read));N_1 = variable empleada para almacenar el primer número ingresado por el usuario
(display "Entre el segundo numero ")
(define N_2 (read));N_2 = variable empleada para almacenar el segundo número ingresado por el usuario
(if (and (= (remainder N_1 2) 0) (= (remainder N_2 2) 0))
    (display "Ambos son pares")
    (if (and (= (remainder N_1 2) 1) (= (remainder N_2 2) 1))
        (display "Ambos son impares")
        (void)
    )
)