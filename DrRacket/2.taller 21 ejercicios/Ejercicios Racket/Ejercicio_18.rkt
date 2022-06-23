#lang racket
;Fecha de creación: 2021/03/03
;Hora de creación: 10:25pm
;autor: Ing(c).Jerik David Hincapie Bedoya
;presentado a: PhD.Ricardo Moreno Laverde
;lenguaje: DrRacket.
;versión de DrRacket: 8.0.0
;versión de programa: 1.5
;Nombre del SO: Microsoft Windows 10 pro
;versión de SO: 10.0.18363 compilación 18363
;Universidad Tecnológica de Pereira.
;Programa de Ingeniería de Sistemas y Computación.
;Este programa solicita al usuario el tiempo que tuvo su vehículo dentro del estacionamiento, digitando este de forma individual su parte en horas y en minutos y calcula
;el total a pagar considerando que, El estacionamiento cobra $1800 por hora o fracción
;Programa construido para ofrecer un correcto funcionamiento solo con números naturales positivos y dentro de las estructuras de tiempo convencionales

(displayln "Este programa, solicita el tiempo que un usuario tuvo su vehículo dentro del estacionamiento, digitando este de forma individual su parte en horas y en minutos, y luego se imprimirá el valor a pagar por el respectivo tiempo, considerando que,")
(displayln "-El estacionamiento cobra $1800 por hora o fracción")
(display "Ingrese la cantidad de horas que el vehículo estuvo en el estacionamiento: ")
(define hr (read));hr = variable empleada para almacenar el tiempo en horas ingresado
(display "Ingrese la cantidad de minutos que el vehículo estuvo en el estacionamiento: ")
(define min (read));min = variable empleada para almacenar el tiempo en minutos ingresado
(define val (void));val = variable empleada para posteriormente almacenar el valor a pagar por el tiempo.
(define mih (void));mih = variable empleada para posteriormente almacenar la cantidad de horas que hay en los minutos ingresados si es el caso
(define exc (void));exc = variable empleada para posteriormente almacenar la cantidad de minutos que equivalen a fracción si es el caso
(if (> min 60)
    (begin
      (set! mih (quotient min 60))
      (set! exc (remainder min 60))
      (if (> exc 0)
          (begin
            (set! val (+ (* mih 1800) (* (+ hr 1) 1800)))
            (printf "El valor a pagar es ~a" val )
          )
          (begin
            (set! val (+ (* mih 1800) (* hr 1800)))
            (printf "El valor a pagar es ~a" val )
          )
      )
    )
    (if (> min 0)
        (begin
          (set! val (* (+ hr 1) 1800))
          (printf "El valor a pagar es ~a" val)
        )
        (begin
          (set! val (* hr 1800))
          (printf "El valor a pagar es ~a" val)
        )
    )
)