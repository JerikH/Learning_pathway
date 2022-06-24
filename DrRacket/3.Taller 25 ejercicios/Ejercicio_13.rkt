#lang racket
;Fecha de publicación: 29/03/2021
;Fecha de creación: 28/03/2021
;Hora de creación: 01:55 am
;versión del código: 1.0
;Autor: Ing(c).Jerik David Hincapie Bedoya
;Lenguaje utilizado: DrRacket
;Versión del lenguaje utilizado: 8.0
;Presentado a: PhD Ricardo Moreno Laverde
;Universidad Tecnológica de Pereira
;Programa de Ingeniería de Sistemas y Computación
;Este programa imprime una estructura de pirámide invertida formada por letras P.
;Asi.
#|
                                 PPPPPPPPPPPPP
                                  PPPPPPPPPPP
                                   PPPPPPPPP
                                    PPPPPPP
                                     PPPPP
                                      PPP
                                       P
|#
;Salvedad: Este programa está construido para hacer exactamante lo solicitado al ejecutarlo, sin efectuar
;cambios en ningún lugar del código, no está pensado para otras funciones.

(define (contador es le limle co);inicio de la definición de la función contador, la cual se encarga de contar y limitar los saltos de linea
  (if (< co limle)
      (espacios es le limle co)
      (void)
  )
);fin de la definición de la función
(define (espacios es le limle co);inicio de la definición de la función espacios, la cual se encarga de imprimir los espacios necesarios para el respectivo ciclo
  (printf "~a" (make-string es #\space))
  (set! es (+ es 1))
  (print es le limle co)
);fin de la definición de la función
(define (print es le limle co);inicio de la definición de la función print, la cual se encarga de imprimir las letras P para el respectivo ciclo
  (set! le (- le 2))
  (printf "~a\n" (make-string le #\P))
  (set! co (+ co 1))
  (contador es le limle co)
);fin de la definición de la función

(define es 33);es = variable empleada en la función (espacios) para definir los espacios que se deben imprimir para el respectivo ciclo
(define le 15);le = variable empleada en la función (print) para definir la cantidad de letras que se deben imprimir para el respectivo ciclo
(define limle 8);limle = variable empleada en la función (contador) para establecer la cantidad de saltos de linea que deben hacerse
(define co 1);co = variable empleada en la función (contador) para almacenar los incrementos del conteo de los saltos de linea
(contador es le limle co)