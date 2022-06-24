#lang racket
;Fecha de publicación: 29/03/2021
;Fecha de creación: 26/03/2021
;Hora de creación: 15:00 pm
;versión del código: 1.2
;Autor: Ing(c).Jerik David Hincapie Bedoya
;Lenguaje utilizado: DrRacket
;Versión del lenguaje utilizado: 8.0
;Presentado a: PhD Ricardo Moreno Laverde
;Universidad Tecnológica de Pereira
;Programa de Ingeniería de Sistemas y Computación
;Este programa imprime la suma del factorial de los factoriales de un número ingresado.

;Salvedad: Este programa está construido para hacer exactamante lo solicitado al ejecutarlo, sin efectuar
;cambios en ningún lugar del código, no está pensado para otras funciones, solo se garantiza resultado para números enteros positivos.

(define (validarsi0 n co c acu acus);inicio de la función que valida si el número ingresado es 0 ó negativo
  (if (= n 0)
      (begin
        (displayln "La suma de los factoriales solicitados es: 1")
      )
      (if (< n 0)
          (begin
            (displayln "Error: Dato inválido. Por favor ingrese un número entero positivo")
            (set! n (read))
            (validarsi0 n co c acu acus)
          )
          (facto n co c acu acus)
      )
  )
);fin de la definición de la función
(define (facto n co c acu acus);inicio de la definición de la función que calcula la suma del factorial de los factoriales del número
  (if (<= co n)
      (begin
        (set! acu (* acu c))
        (set! acus (+ acu acus))
        (set! c (+ c 1))
        (set! co (+ co 1))
        (facto n co c acu acus)
      )
      (printf "La suma de los factoriales solicitados es: ~a" (+ acus 1))
  )
);fin de la definición de la función

(displayln "Este programa imprime la suma del factorial de los factoriales de un número ingresado \ningrese un número entero positivo")
(define n (read)); n = variable empleada para almacenar el número ingresado por el usuario
(define co 1); co = variable empleada para servir como contador en los ciclos de la función (facto)
(define acu 1); acu = variable empleada para almacenar el valor acumulado de las multiplicaciones que se ejecutan en la función (facto)
(define c 1); c = variable empleada para servir como incremento en cada ciclo de la función (facto)
(define acus 0); acus = variable empleada para almacenar el valor de la suma del factorial de los factoriales del número ingresado
(validarsi0 n co c acu acus)