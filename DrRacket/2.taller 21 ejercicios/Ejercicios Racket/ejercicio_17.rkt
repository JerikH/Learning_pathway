#lang racket
;Fecha de creación: 2021/03/03
;Hora de creación: 10:05pm
;autor: Ing(c).Jerik David Hincapie Bedoya
;presentado a: PhD.Ricardo Moreno Laverde
;lenguaje: DrRacket.
;versión de DrRacket: 8.0.0
;versión de programa: 1.0
;Nombre del SO: Microsoft Windows 10 pro
;versión de SO: 10.0.18363 compilación 18363
;Universidad Tecnológica de Pereira.
;Programa de Ingeniería de Sistemas y Computación.
;Este programa solicita al usuario la altura en metros y el peso en kilogramos del usuario para calcular así su índice de masa corporal (IMC)y lo clasifica
;Programa construido para ofrecer un correcto funcionamiento solo con números naturales positivos sin incluir el cero

(displayln "Este programa, solicita la altura en metros y el peso en kilogramos del usuario para calcular así su índice de masa corporal (IMC), y clasificándolo según los siguientes criterios:")
(newline)
(displayln "IMC < 16 = Criterio de ingreso en hospital")
(displayln "16 ≤ IMC < 17 = Infrapeso")
(displayln "17 ≤ IMC < 18 = Bajo peso")
(displayln "18 ≤ IMC < 25 = Peso normal (saludable)")
(displayln "25 ≤ IMC < 30 = Sobrepeso (obesidad de grado I)")
(displayln "30 ≤ IMC < 35 = Sobrepeso crónico (obesidad de grado II)")
(displayln "35 ≤ IMC < 40 = Obesidad premórbida (obesidad de grado III)")
(displayln "IMC > 40 = Obesidad mórbida (obesidad de grado IV)")
(newline)
(displayln "IMC = (peso [Kg]) / (altura [m])^2")
(display "Ingrese su peso en Kg: ")
(define kg (read));kg = variable empleada para almacenar el peso ingresado
(display "Ingrese su altura en metros: ")
(define me (read));me = variable empleada para almacenar la altura ingresada
(define imc (/ kg (sqr me)));imc = variable empleada para almacenar el resultado del IMC con los datos suministrados
(if (< imc 16)
    (begin
      (printf "su IMC es ~a" imc)
      (newline)
      (printf "Usted se encuentra en criterio de ingreso en hospital")
    )
    (if (and (<= 16 imc) (< imc 17))
        (begin
          (printf "su IMC es ~a" imc)
          (newline)
          (printf "Usted padece de infrapeso")
        )
        (if (and (<= 17 imc) (< imc 18))
            (begin
              (printf "su IMC es ~a" imc)
              (newline)
              (printf "Usted padece de bajo peso")
            )
            (if (and (<= 18 imc) (< imc 25))
                (begin
                  (printf "su IMC es ~a" imc)
                  (newline)
                  (printf "Usted está en un peso normal (saludable)")
                )
                (if (and (<= 25 imc) (< imc 30))
                    (begin
                      (printf "su IMC es ~a" imc)
                      (newline)
                      (printf "Usted padece de sobrepeso (obesidad de grado I)")
                    )
                    (if (and (<= 30 imc) (< imc 35))
                        (begin
                          (printf "su IMC es ~a" imc)
                          (newline)
                          (printf "Usted padece de sobrepeso crónico (obesidad de grado II)")
                        )
                        (if (and (<= 35 imc) (< imc 40))
                            (begin
                              (printf "su IMC es ~a" imc)
                              (newline)
                              (printf "Usted padece de obsedidad premórbida (obesidad de grado III)")
                            )
                            (if (> imc 40)
                                (begin
                                  (printf "su IMC es ~a" imc)
                                  (newline)
                                  (printf "Usted padece de obesidad mórbida (obesidad de grado IV)")
                                )
                                (void)
                            )
                        )
                    )
                )
            )
        )
    )
)