#lang racket
;Fecha de creación: 2021/03/03
;Hora de creación: 01:52am
;autor: Ing(c).Jerik David Hincapie Bedoya
;presentado a: PhD.Ricardo Moreno Laverde
;lenguaje: DrRacket.
;versión de DrRacket: 8.0.0
;versión de programa: 1.0
;Nombre del SO: Microsoft Windows 10 pro
;versión de SO: 10.0.18363 compilación 18363
;Universidad Tecnológica de Pereira.
;Programa de Ingeniería de Sistemas y Computación.
;Este programa solicita al usuario la cantidad de piezas adquiridas y su valor unitario, para imprimir Cantidad de dinero de la empresa invertido
;Valor del préstamo realizado al banco; Valor del crédito solicitado al fabricante; Interés total cobrado por el fabricante.
;Programa construido para ofrecer un correcto funcionamiento solo con números naturales positivos sin incluir el cero

(displayln "Este programa, solicita la cantidad de piezas adquiridas y su valor unitario con respecto a las siguientes características va a imprimir, Cantidad de dinero de la empresa invertido; Valor del préstamo realizado al banco; Valor del crédito solicitado al fabricante; Interés total cobrado por el fabricante.")
(displayln "- Si el monto total de la compra excede de $500000 la empresa tendrá la capacidad de invertir de su propio dinero un 55% del monto de la compra, pedir prestado al banco un 30% y el resto lo pagara solicitando un crédito al fabricante.")
(displayln "- Si el monto total de la compra no excede de $500000 la empresa tendrá capacidad de invertir de su propio dinero un 70% y el restante 30% lo pagará solicitando crédito al fabricante.")
(displayln "- El fabricante cobra por concepto de intereses un 20% sobre la cantidad que se le pague a crédito.")
(display "Ingrese la cantidad de piezas adquiridas: ")
(define pz (read));pz = variable empleada para almacenar la cantidad de piezas adquiridas
(display "Ingrese el costo unitario de las piezas: ")
(define val (read));val = variable empleada para almacenar el valor unitario de las piezas adquiridas
(define tot (* val pz));tot = variable empleada para almacenar el valor total de las piezas adquiridas
(define Inv (void));Inv = variable empleada para posteriormente almacenar el valor que representa la inversión hecha por la empresa
(define pres (void));pres = variable empleada para posteriormente almacenar el valor que representa la prestamo hecho al banco
(define cre (void));cre = variable empleada para posteriormente almacenar el valor que representa el crédito solicitado por la empresa al fabricante
(define int (void));Inv = variable empleada para posteriormente almacenar el valor que representa los intereses que el fabricante cobra por el crédito
(if (> tot 500000)
    (begin
      (set! Inv (* tot 0.55))
      (set! pres (* tot 0.30))
      (set! cre (* tot 0.15))
      (set! int (* cre 0.20))
      (printf "Cantidad de dinero de la empresa invertido: $~a\n" Inv)
      (printf "Valor del préstamo solicitado al banco: $~a\n" pres)
      (printf "Valor del crédito solicitado al fabricante: $~a\n" cre)
      (printf "Interés cobrado por el fabricante: $~a\n" int)
    )
    (begin
      (set! Inv (* tot 0.70))
      (set! pres 0)
      (set! cre (* tot 0.30))
      (set! int (* cre 0.20))
      (printf "Cantidad de dinero de la empresa invertido: $~a\n" Inv)
      (printf "Valor del préstamo solicitado al banco: $~a\n" pres)
      (printf "Valor del crédito solicitado al fabricante: $~a\n" cre)
      (printf "Interés cobrado por el fabricante: $~a\n" int)
    )
)