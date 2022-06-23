#lang racket
;Fecha de creación: 2021/01/03
;Hora de creación: 07:05pm
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
;Programa construido para correcto funcionamiento SOLO con los 12 meses del año del calendario gregoriano
;Para cualquier otro valor no se asegura resultado.

(displayln "Este programa, lee un número entre [1 y 12] e imprime el mes que le corresponde en el año. Referencia: 1=Enero. 12=Diciembre")
(display "Entre un número ")
(define mes (read));mes = variable empleada para almacenar el número entrado por el usuario
(if (= mes 1)
    (display "Enero")
    (if (= mes 2)
        (display "Febrero")
        (if (= mes 3)
            (display "Marzo")
            (if (= mes 4)
                (display "Abril")
                (if (= mes 5)
                    (display "Mayo")
                    (if (= mes 6)
                        (display "Junio")
                        (if (= mes 7)
                            (display "Julio")
                            (if (= mes 8)
                                (display "Agosto")
                                (if (= mes 9)
                                    (display "Septiembre")
                                    (if (= mes 10)
                                        (display "Octubre")
                                        (if (= mes 11)
                                            (display "Noviembre")
                                            (display "Diciembre")
                                        )
                                    )
                                )
                            )
                        )
                    )
                )
            )
        )
    )
)