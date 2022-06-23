#lang racket
;Fecha de creación: 2021/03/03
;Hora de creación: 06:35am
;autor: Ing(c).Jerik David Hincapie Bedoya
;presentado a: PhD.Ricardo Moreno Laverde
;lenguaje: DrRacket.
;versión de DrRacket: 8.0.0
;versión de programa: 1.0
;Nombre del SO: Microsoft Windows 10 pro
;versión de SO: 10.0.18363 compilación 18363
;Universidad Tecnológica de Pereira.
;Programa de Ingeniería de Sistemas y Computación.
;Este programa solicita al usuario un número de 3 cifras e imprime si dicho número es capicúo (es igual al revés del número original) 
;Programa construido para correcto funcionamiento SOLO con números de 3 cifras (Nu <= 999 Y Nu >= 100)
;Para cualquier otro valor no se asegura resultado.
(displayln "Este programa, solicita un número de 3 cifras (Nu <= 999 Y Nu >= 100) e imprime si este es capicúo (es igual al revés del número original)")
(displayln "Ejemplo = 323, 101")
(display "Entre un número de 3 cifras: ")
(define Nu (read)); Nu = variable empleada para almacenar el número ingresado por el usuario
(if (= (remainder Nu 10) (quotient Nu 100))
    (display "El número es capicúo")
    (void)
)