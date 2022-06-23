#lang racket
;Fecha de creación: 2021/01/03
;Hora de creación: 06:35pm
;autor: Ing(c).Jerik David Hincapie Bedoya
;presentado a: PhD.Ricardo Moreno Laverde
;lenguaje: DrRacket.
;versión de DrRacket: 8.0.0
;versión de programa: 1.0
;Nombre del SO: Microsoft Windows 10 pro
;versión de SO: 10.0.18363 compilación 18363
;Universidad Tecnológica de Pereira.
;Programa de Ingeniería de Sistemas y Computación.
;Este programa solicita al usuario un número e imprime el día de la semana que le corresponde, referencia 1=Lunes 7=Domingo
;Programa está construido para correcto funcionamiento SOLO con los 7 días de la semana
;Para cualquier otro valor no se asegura resultado.

(displayln "Este programa, lee un número entre [1 y 7] e imprime el día que le corresponde en la semana. Referencia: 1=Lunes. 7=Domingo. ")
(display "Entre un número  ")
(define dia (read));dia = variable empleada para almacenar el número entrado por el usuario.
(if (= dia 1)
    (display "Lunes")
    (if (= dia 2)
        (display "Martes")
        (if (= dia 3)
            (display "Miércoles")
            (if (= dia 4)
                (display "Jueves")
                (if (= dia 5)
                    (display "Viernes")
                    (if (= dia 6)
                        (display "Sábado")
                        (display "Domingo")
                     )
                 )
             )
         )
     )
)