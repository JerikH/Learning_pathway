#lang racket
;Fecha de creación: 2021/03/03
;Hora de creación: 01:15am
;autor: Ing(c).Jerik David Hincapie Bedoya
;presentado a: PhD.Ricardo Moreno Laverde
;lenguaje: DrRacket.
;versión de DrRacket: 8.0.0
;versión de programa: 1.0
;Nombre del SO: Microsoft Windows 10 pro
;versión de SO: 10.0.18363 compilación 18363
;Universidad Tecnológica de Pereira.
;Programa de Ingeniería de Sistemas y Computación.
;Este programa solicita al usuario la clave y el valor original de un producto, con base en estos datos imprimirá el valor final con un descuento aplicado
;considerando que para la clave 1 el descuento es del 10% y para la clave 2 el descuento es del 20%
;Programa construido para ofrecer un correcto funcionamiento solo con números naturales positivos y las claves definidas en el programa

(displayln "Este programa, solicita la clave y el valor original de un producto, con base en estos datos imprimirá el valor final con un descuento aplicado, considerando que, ")
(displayln "- Clave 1 = 10% de descuento")
(displayln "- Calve 2 = 20% de descuento")
(display "Entre la clave del producto: ")
(define cla (read));cla = variable empleada para almacenar la clave digitada por el usuario
(display "Entre el valor original del producto: ")
(define val (read));val = variable empleada para almacenar el valor original digitado por el usuario
(define pag (void));pag = variable empleada posteriormente para almacenar el valor final del producto
(if (= cla 1)
    (begin
      (set! pag (* val 0.90))
      (printf "Clave de producto ingresada ~a" cla)
      (newline)
      (printf "Valor original ingresado ~a" val)
      (newline)
      (printf "Valor final con descuento ~a" pag)
    )
    (if (= cla 2)
        (begin
          (set! pag (* val 0.80))
          (printf "Clave de producto ingresada ~a" cla)
          (newline)
          (printf "Valor original ingresado ~a" val)
          (newline)
          (printf "Valor final con descuento ~a" pag)
          (newline)
        )
        (void)
    )
)