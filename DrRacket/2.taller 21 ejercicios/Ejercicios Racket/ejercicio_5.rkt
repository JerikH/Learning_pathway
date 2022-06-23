#lang racket
;Fecha de creación: 2021/01/03
;Hora de creación: 07:25pm
;autor: Ing(c).Jerik David Hincapie Bedoya
;presentado a: PhD.Ricardo Moreno Laverde
;lenguaje: DrRacket.
;versión de DrRacket: 8.0.0
;versión de programa: 1.0
;Nombre del SO: Microsoft Windows 10 pro
;versión de SO: 10.0.18363 compilación 18363
;Universidad Tecnológica de Pereira.
;Programa de Ingeniería de Sistemas y Computación.
;Este programa solicita al usuario el tiempo trabajado por un obrero en años e imprime el nuevo salario del trabajador, considerando que su salario base es de 40.000 euros
;y con respecto a las siguientes características se incrementa
;a. Si lleva más de 10 años en la empresa se le aplica un aumento del 10%.
;b. Si lleva menos de 10 años pero más que 5 se le aplica un aumento del 7%.
;c. Si lleva menos de 5 años pero más que 3 se le aplica un aumento del 5%.
;d. Si lleva menos de 3 años se le aplica un aumento del 3%.
;Programa construido para correcto funcionamiento trabajando SOLO con las características antes descritas
;Para cualquier otro requerimineto no se asegura resultado.

(displayln "Este programa leyendo por teclado la antigüedad en años, calcula el sueldo mensual que le corresponde al trabajador de una empresa que cobra 40.000 euros anuales, el programa debe realizar los cálculos en función de los siguientes criterios:")
(displayln "a. Si lleva más de 10 años en la empresa se le aplica un aumento del 10%.")
(displayln "b. Si lleva menos de 10 años pero más que 5 se le aplica un aumento del 7%.")
(displayln "c. Si lleva menos de 5 años pero más que 3 se le aplica un aumento del 5%.")
(displayln "d. Si lleva menos de 3 años se le aplica un aumento del 3%.")
(display "Entre el número de años de antigüedad del trabajador: ")
(define time (read));time = variable empleada para almaecenar el número entrado por el usuario
(if (> time 10)
    (printf "~a" "El sueldo mensual es de 3.666,67 euros")
    (if (and (<= time 10) (> time 5))
        (printf "~a" "El sueldo mensual es de 3.566,67 euros")
        (if (and (<= time 5) (> time 3))
           (printf "~a" "El sueldo mensual es de 3.500 euros")
           (if (<= time 3)
               (printf "~a" "El sueldo mensual es de 3.433,33 euros")
               (void)
           )
        )
    )
)