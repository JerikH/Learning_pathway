#lang racket
;Fecha de creación: 2021/02/03
;Hora de creación: 11:25pm
;autor: Ing(c).Jerik David Hincapie Bedoya
;presentado a: PhD.Ricardo Moreno Laverde
;lenguaje: DrRacket.
;versión de DrRacket: 8.0.0
;versión de programa: 1.0
;Nombre del SO: Microsoft Windows 10 pro
;versión de SO: 10.0.18363 compilación 18363
;Universidad Tecnológica de Pereira.
;Programa de Ingeniería de Sistemas y Computación.
;Este programa solicita al usuario un tipo de actividad a realizar de las predefinidas en el programa y luego el tiempo que dicha activida será llevada a cabo
;de forma tal que imprima la cantidad de calorías que se consumen en el proceso, sabiendo que el al dormir se consumen 1.08 por minuto y al estar sentado 1.66 por minuto
;Programa construido para ofrecer un correcto funcionamiento solo con números naturales positivos y las dos actividades ya definidas

(displayln "Este programa, solicita el tipo de actividad realizada (dormir o sentado en reposo), y el tiempo que se realiza dicha actividad en minutos, e imprime la cantidad de calorías consumidas, considerando que")
(displayln "- Para la actividad de dormir, se consume 1,08 calorías por minuto.")
(displayln "- Para la actividad de estar sentado en reposo, se consume 1,66 calorías por minuto.")
(display "Entre el tipo de actividad: ")
(define tipe (~a(read)));tipe = Variable empleada para almacenar el tipo de actividad como una cadena de texto
(display "Entre el tiempo que se realiza la actividad (minutos) ")
(define time (read));time = Variable empleada para almacenar el tiempo en minutos en el que se realiza la actividad
(define Cal (void))
(if (equal? tipe "dormir")
    (begin
      (set! Cal (* time 1.08))
      (printf "Se consumen ~a calorías" Cal)
    )
    (begin
      (set! Cal (* time 1.66))
      (printf "Se consumen ~a calorías" Cal)
    )
)