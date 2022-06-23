#lang racket
;Fecha de creación: 2021/03/03
;Hora de creación: 01:35am
;autor: Ing(c).Jerik David Hincapie Bedoya
;presentado a: PhD.Ricardo Moreno Laverde
;lenguaje: DrRacket.
;versión de DrRacket: 8.0.0
;versión de programa: 1.0
;Nombre del SO: Microsoft Windows 10 pro
;versión de SO: 10.0.18363 compilación 18363
;Universidad Tecnológica de Pereira.
;Programa de Ingeniería de Sistemas y Computación.
;Este programa solicita al usuario la cantidad de camisas compradas y el valor total de las mismas, e imprime el valor final aplicando un descuento basándose en
;Si se compran tres(3) camisas o más se aplica un 20% de descuento; Si se compran menos de tres(3) camisas se aplica un 10% de descuento
;Programa construido para ofrecer un correcto funcionamiento solo con números naturales positivos sin incluir el 0

(displayln "Este programa, solicita al usuario la cantidad de camisas compradas y el valor total de las mismas, e imprime el valor final aplicando un descuento basándose en las siguientes características.")
(displayln "-Si se compran tres(3) camisas o más se aplica un 20% de descuento sobre el costo ingresado.")
(displayln "-Si se compran menos de tres(3) camisas se aplica un 10% de descuento sobre el costo ingresado.")
(display "Ingrese la cantidad de camisas: ")
(define cami (read));cami = variable empleada para almacenar la cantidad de camisas adquiridas
(display "Ingrese el costo total de las camisas: ")
(define val (read));val = variable empleada para almacenar el valor total de las camisas
(define pag (void));pag = variable empleada para posteriormente almacenar el valor final a pagar por las camisas
(if (>= cami 3)
    (begin
      (set! pag (* val 0.80))
      (printf "El total a pagar por concepto de las camisas es de: $~a" pag)
    )
    (begin
      (set! pag (* val 0.90))
      (printf "El total a pagar por concepto de las camisas es de: $~a" pag)
    )
)