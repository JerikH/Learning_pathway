#lang racket
;Fecha de publicación: 29/03/2021
;Fecha de creación: 27/03/2021
;Hora de creación: 23:30 am
;versión del código: 1.6
;Autor: Ing(c).Jerik David Hincapie Bedoya
;Lenguaje utilizado: DrRacket
;Versión del lenguaje utilizado: 8.0
;Presentado a: PhD Ricardo Moreno Laverde
;Universidad Tecnológica de Pereira
;Programa de Ingeniería de Sistemas y Computación
;Este programa imprime una estructura formada por letras A con aspecto de movimiento.
;Así (Esto es un EJEMPLO, no hace imágen detallada de lo que hace el código, aquí es más corto).
;A          A

; A        A

;  A      A

;   A    A

;    A  A

;     AA

;Salvedad: Este programa está construido para hacer exactamante lo solicitado al ejecutarlo, sin efectuar
;cambios en ningún lugar del código, no está pensado para otras funciones.

(define (saltos ini fin);inicio de la definición de la función que provoca los saltos de linea en la pantalla de ejecución
  (if (<= ini fin)
      (begin
        (newline)
        (set! ini (+ ini 1))
        (saltos ini fin)
      )
      (set! ini 0)
  )
);fin de la definición de la función
(define (delay ini fin);inicio de la definición de la función que provoca una retraso en el programa, a modo imitación del delay de otros lenguajes de programación
  (if (<= ini fin)
      (begin
        (set! ini (+ ini 1))
        (delay ini fin)
      )
      (set! ini 0)
  )
);fin de la definición de la función

(define(estructura es alt);inicio de la definición de la función que imprime las letras A con los espacios necesarios, creando la estructura deseada
  (if (< es alt)
      (begin
        (printf "~aA~aA" (make-string es #\space) (make-string (- 78 (* es 2)) #\space))
        (delay 1 5000000)
        (saltos 1 15)
        (estructura (+ es 1) alt)
      )
      (void)
  )
);fin de la definición de la función
(estructura 0 40)