#lang racket
;Fecha de publicación: 29/03/2021
;Fecha de creación: 28/03/2021
;Hora de creación: 12:05 m
;versión del código: 1.5
;Autor: Ing(c).Jerik David Hincapie Bedoya
;Lenguaje utilizado: DrRacket
;Versión del lenguaje utilizado: 8.0
;Presentado a: PhD Ricardo Moreno Laverde
;Universidad Tecnológica de Pereira
;Programa de Ingeniería de Sistemas y Computación
;Este programa cálcula el resultado de cos(x) en función del número ingresado por el usuario y los términos que este determine,
;empleando la serie de taylor para el cálculo.

;Salvedad: Este programa está construido para hacer exactamante lo solicitado al ejecutarlo, sin efectuar
;cambios en ningún lugar del código, no está pensado para otras funciones, y siguiendo las instrucciones
;dadas al ejecutar el programa, para cualquier otra situación no se asegura resultado

(define cont 0);cont = variable empleada para realizar el conteo de los ciclos en la serie de taylor dentro de la función (serie)
(define acum 0);acum = variable empleada para guardar el valor de cada término de la serie de taylor
(define valor 0);valor = variable empleada para almacenar el acumulado de la suma de cada término de la serie de taylor

(define (facto n co c acu);inicio de la definición de la función que calcula el factorial de un número dado
  (if (<= co n)
      (begin
        (set! acu (* acu c))
        (set! c (+ c 1))
        (set! co (+ co 1))
        (facto n co c acu)
      )
      acu
  )
);fin de la definición de la función

(define (serie x ter cont acum valor);inicio de la definición de la función que calcula el valor de cos(x)
  (if (< cont ter)
      (begin
        (set! cont (+ cont 1))
        (set! acum (/ (* (expt -1 cont) (expt x (* 2 cont))) (facto (* 2 cont) 1 1 1)))
        (set! valor (+ valor acum))
        (serie x ter cont acum valor)
      )
      (+ valor 1)
  )
);fin de la definición de la función


(displayln "Este programa calcula el valor de cos(x) con los datos ingresados a continuación")
(displayln "Ingrese el valor de x que desea emplear para el procesamiento(para garantizar un correcto resultado ingrese el número que desea con el punto décimal, ejemplo: 2.0) ")
(define x (read));x = variable empleada para almacenar el valor a procesar ingresado por el usuario
(display "Ingrese la cantidad de términos con los que desea calcular la serie (ingrese solo números enteros positivos): ")
(define ter (read));ter = variable empleada para almacenar la cantidad de términos que el usuario ingresó para el procesamiento
(newline)
(define pox x);pox = variable empleada para almacenar el valor original de x a lo largo del código, de forma que este no se pierda cuando se resetee a x
(printf "Empleando ~a términos para el cálculo el resultado de cos(~a) es: ~a" ter x (serie x ter cont acum valor))