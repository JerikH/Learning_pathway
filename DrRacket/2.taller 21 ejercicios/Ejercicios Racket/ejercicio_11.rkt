#lang racket
;Fecha de creación: 2021/02/03
;Hora de creación: 09:05pm
;autor: Ing(c).Jerik David Hincapie Bedoya
;presentado a: PhD.Ricardo Moreno Laverde
;lenguaje: DrRacket.
;versión de DrRacket: 8.0.0
;versión de programa: 1.0
;Nombre del SO: Microsoft Windows 10 pro
;versión de SO: 10.0.18363 compilación 18363
;Universidad Tecnológica de Pereira.
;Programa de Ingeniería de Sistemas y Computación.
;Este programa solicita al usuario el subtotal de la compra realizada por un cliente, si dicho subtotal es superior a $100000 recibirá un descuento del 20% e imprimirá
;dicho total, de no cumplirse esa condición, regresará como total el mismo número ingresado
;Programa construido para ofrecer un correcto funcionamiento solo con números naturales positivos

(displayln "Este programa, solicita el subtotal de la compra realizada por un cliente, e imprime el total de la misma, sabiendo que para compras mayores a $100000 se aplica un descuento del 20%")
(display "Digite el subtotal de la compra(sin puntos ni caracteres especiales): ")
(define Sub (read));Sub = Variable empleada para almacenar el subtotal ingresado por el usuario
(if (> Sub 100000)
    (printf "El total de la compra es $~a" (+ (* (* Sub 0.20) (- 1)) Sub))
    (printf "El total de la compra es $~a"Sub)
)