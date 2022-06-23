#lang racket
;Fecha de creación: 2021/03/03
;Hora de creación: 06:15am
;autor: Ing(c).Jerik David Hincapie Bedoya
;presentado a: PhD.Ricardo Moreno Laverde
;lenguaje: DrRacket.
;versión de DrRacket: 8.0.0
;versión de programa: 1.0
;Nombre del SO: Microsoft Windows 10 pro
;versión de SO: 10.0.18363 compilación 18363
;Universidad Tecnológica de Pereira.
;Programa de Ingeniería de Sistemas y Computación.
;Este programa solicita al usuario la cantidad recorrida en kilometros con un vehículo rentado y le entrega el costo total a pagar por el servicio
;seguido del IVA que dicho servicio incluye.
;Programa construido para correcto funcionamiento SOLO con números enteros positivos
;Para cualquier otro valor no se asegura resultado.

(displayln "Este programa, solicita al usuario digitar la cantidad de kilómetros que ha recorrido con el vehículo rentado, con respecto a esto, le dice el total a pagar por el servicio (dentro de dicho costo ya se encuentra incluido el costo del IVA), basándose en las siguientes características calcula el costo del servicio:")
(displayln "- Se cobra un costo fijo de $400000 por los primeros 300Km recorridos")
(displayln "- Para recorridos mayores a 300Km y como máximo de 1000Km se cobra el costo fijo y un costo adicional de $15000 por cada uno de los kilómetros que superan los 300.")
(displayln "- Para recorridos mayores a 1000Km se cobra $10000 por cada uno de los kilómetros que superan los 1000, y se cobran las dos anteriores condiciones ")
(displayln "- Dentro del costo que se obtiene con lo antes dicho está incluido el 20% correspondiente al IVA")
(displayln "Ingrese la cantidad de kilómetros recorridos: ")
(define km (read)); km = variable empleada para almacenar la cantidad de kilometros recorridos que el usuario ingresa
(define cf 400000); cf = variable empleada para almacenar el costo fijo que se cobra por el servicio
(define c (void)); c = variable empleada para posteriormente almacenar el costo total del servicio si este es mayor a cf
(define im (void)); im = variable empleada para posteriormente almacenar el valor del IVA incluido en al venta
(if (<= km 300)
    (begin
      (set! im (* cf 0.20))
      (printf "El monto total a pagar es de: $~a\n" cf)
      (printf "El valor del IVA incluido en esta venta es de: $~a" im)
    )
    (if (<= km 1000)
        (begin
          (set! c (+ cf (* (- km 300) 15000)))
          (set! im (* c 0.20))
          (printf "El monto total a pagar es de: $~a\n" c)
          (printf "El valor del IVA incluido en esta venta es de: $" im)
        )
        (begin
          (set! c (+ (* (- 1000 300) 15000) (* (- km 1000) 10000)))
          (set! im (+ c 0.20))
          (printf "El monto total a pagar es de: $~a\n" c)
          (printf "El valor del IVA incluido en esta venta es de: $" im)
        )
    )
)