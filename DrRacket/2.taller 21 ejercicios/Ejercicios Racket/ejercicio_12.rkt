#lang racket
;Fecha de creación: 2021/02/03
;Hora de creación: 09:15pm
;autor: Ing(c).Jerik David Hincapie Bedoya
;presentado a: PhD.Ricardo Moreno Laverde
;lenguaje: DrRacket.
;versión de DrRacket: 8.0.0
;versión de programa: 1.0
;Nombre del SO: Microsoft Windows 10 pro
;versión de SO: 10.0.18363 compilación 18363
;Universidad Tecnológica de Pereira.
;Programa de Ingeniería de Sistemas y Computación.
;Este programa solicita al usuario el tiempo en horas trabajado por un empleado, si dicho tiempo es menor o igual a 40 horas, se le pagará $16 por cada una de esas horas
;en caso contrario, se le pagará $16 por cada una de las primeras 40 horas y $20 por cada una de las horas extra.
;Programa construido para ofrecer un correcto funcionamiento solo con números naturales positivos

(displayln "Este programa, solicita el tiempo en horas trabajado por un obrero e imprime el total que le será pagado por dicho tiempo, considerando que: ")
(displayln "- Si trabaja 40 horas o menos se le paga $16 por hora")
(displayln "- Si trabaja más de 40 horas se le paga $16 por cada una de las primeras 40 horas y $20 por cada hora extra")
(display "Entre el tiempo en horas: ")
(define time (read));time = Variable empleada para almacenar el tiempo en horas, que el empleado trabaja
(define pago (void));pago = Variable empleada para posteriormente almacenar el valor del pago que debe recibir el empleado
(if (<= time 40)
    (begin
      (set! pago (* time 16))
      (printf "El pago total por el tiempo trabajado es de $ ~a" pago)
    )
    (begin
      (set! pago (+ (*(- time 40) 20) (* 40 16)))
      (printf "El pago total por el tiempo trabajado es de $~a" pago)
    )
)