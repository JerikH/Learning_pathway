#lang racket
;Fecha de publicación: 30/03/2021
;Fecha de creación: 29/03/2021
;Hora de creación: 10:00 am
;versión del código: 2.2
;Autor: Ing(c).Jerik David Hincapie Bedoya
;Lenguaje utilizado: DrRacket
;Versión del lenguaje utilizado: 8.0
;Presentado a: PhD Ricardo Moreno Laverde
;Universidad Tecnológica de Pereira
;Programa de Ingeniería de Sistemas y Computación
;Este programa ejecuta la función rush. Lo siguiente es un EJEMPLO de lo que debe hacer la función rush para el caso específico.
#|
(rush 5 3)

o---o
|   |
o---o

|#

;Salvedad: Solo se garantiza resultado para números enteros positivos.

;RUSH00

(define (rush x y);inicio de la definición de la función rush
  (if (or (<= x 0) (<= y 0))
      (printf "")
      (filas 1 y x)
  )
);fin de la definición de la función
(define (filas ini fin ex);inicio de la definición de la función filas, se valida si aún faltan filas por imprimir.
  (if (<= ini fin)
      (bsgin ini fin ex)
      (printf "")
  )
);fin de la definición de la función
(define (print.1 ini_1 fin_1);inicio de la definición de la función print.1 quien por medio de la función bsgin1 valida e imprime el caracter necesario para el respectivo ciclo
  (if (<=  ini_1 fin_1)
      (bsgin1 ini_1 fin_1)
      (printf "")
  )
);fin de la definición de la función
(define (print.2 ini_2 fin_2);inicio de la definición de la función print.2 quien por medio de la función bsgin2 valida e imprime el caracter necesario para el respectivo ciclo
  (if (<= ini_2 fin_2)
      (bsgin2 ini_2 fin_2)
      (printf "")
  )
);fin de la definición de la función
(define (bsgin ini fin ex);inicio de la definición de la función bsgin quien valida en qué fila se encuentra el ciclo actual
  (if (or (= ini 1) (= ini fin))
      (print.1 1 ex)
      (print.2 1 ex)
  )
  (printf "\n")
  (filas (+ ini 1) fin ex)
);fin de la definición de la función
(define (bsgin1 ini_1 fin_1);inicio de la definición de la función bsgin1 quien valida si se encuentra en una esquina o no, con base en esto, imprime el caracter que corresponde
  (if (or (= ini_1 1) (= ini_1 fin_1))
      (printf "o")
      (printf "-")
  )
  (print.1 (+ ini_1 1) fin_1)
);fin de la definición de la función
(define (bsgin2 ini_2 fin_2);inicio de la definición de la función bsgin2 quien valida en qué columna se encuentra el ciclo actual e imprime el caracter que corresponde
  (if (or (= ini_2 1) (= ini_2 fin_2))
      (printf "|")
      (printf " ")
  )
  (print.2 (+ ini_2 1) fin_2)
);fin de la definición de la función
(rush 5 3)