#lang racket
;Fecha de creación: 2021/03/03
;Hora de creación: 11:35pm
;autor: Ing(c).Jerik David Hincapie Bedoya
;presentado a: PhD.Ricardo Moreno Laverde
;lenguaje: DrRacket.
;versión de DrRacket: 8.0.0
;versión de programa: 1.0
;Nombre del SO: Microsoft Windows 10 pro
;versión de SO: 10.0.18363 compilación 18363
;Universidad Tecnológica de Pereira.
;Programa de Ingeniería de Sistemas y Computación.
;Este programa solicita al usuario la cantidad de docenas adquiridas del producto y el subtotal obtenido por dichos productos, y tras a aplicar los siguientes
;beneficios ofrecidos por el supermercado imprime, el monto de la compra, el monto del descuento, el monto a pagar y el número de unidades de obsequio por la compra
;de cierta cantidad de docenas del producto
;Ofrece un descuento del 15% por la compra de más de 3 docenas.
;Ofrece un descuento del 10% por la compra de 3 docenas o menos.
;Por cada docena en exceso luego de las 3 primeras se obsequia una unidad de producto.
;Programa construido para ofrecer un correcto funcionamiento solo con números naturales positivos sin incluir el cero

(displayln "Este programa, solicita la cantidad de docenas adquiridas del producto y el subtotal obtenido por dichos productos, y tras a aplicar los siguientes beneficios ofrecidos por el supermercado imprime, el monto de la compra, el monto del descuento, el monto a pagar y el número de unidades de obsequio por la compra de cierta cantidad de docenas del producto.")
(displayln "-Ofrece un descuento del 15% por la compra de más de 3 docenas.")
(displayln "-Ofrece un descuento del 10% por la compra de 3 docenas o menos.")
(displayln "-Por cada docena en exceso luego de las 3 primeras se obsequia una unidad de producto.")
(display "Entre la cantidad de docenas adquiridas: ")
(define doc (read));doc = variable empleada para almacenar la cantidad de docenas adquiridas
(display "Entre el costo unitario de dichas docenas: ")
(define unit (read));unit = variable empleada para almacenar el valor unitario de las docenas
(define tot (void)); tot = variable empleada para posteriormete almacenar el valor total de las docenas
(define desc (void)); desc = variable empleada para posteriormete almacenar el valor del descuento
(define pag (void)); pag = variable empleada para posteriormete almacenar el valor a pagar
(define obs (void)); obs = variable empleada para posteriormete almacenar la cantidad de obsequios
(if (> doc 3)
    (begin
      (set! tot (* unit doc))
      (set! desc (* tot 0.15))
      (set! pag (- tot desc))
      (set! obs (- doc 3))
      (printf "El monto total de la compra es de: ~a\n" tot)
      (printf "El monto del descuento es de: ~a\n" desc)
      (printf "El monto a pagar es: ~a\n" pag)
      (printf "Cantidad de unidades de obsequio que recibirá por la compra: ~a\n" obs)
    )
    (begin
      (set! tot (* unit doc))
      (set! desc (* tot 0.10))
      (set! pag (- tot desc))
      (set! obs 0)
      (printf "El monto total de la compra es de: ~a\n" tot)
      (printf "El monto del descuento es de: ~a\n" desc)
      (printf "El monto a pagar es: ~a\n" pag)
      (printf "Cantidad de unidades de obsequio que recibirá por la compra: ~a\n" obs)
    )
)