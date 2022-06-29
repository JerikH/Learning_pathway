#lang racket
;Fecha de publicación: 16/04/2021
;Fecha de creación: 16/04/2021
;Hora de creación: 02:35 am
;versión del código: 2.6
;Autor: Ing(c).Jerik David Hincapie Bedoya
;Lenguaje utilizado: DrRacket
;Versión del lenguaje utilizado: 8.0
;Presentado a: PhD Ricardo Moreno Laverde
;Universidad Tecnológica de Pereira
;Programa de Ingeniería de Sistemas y Computación
;Este programa permite jugar el juego cruz en raya empleando para esto la siguiente estructura.
#|
1|2|3
-+-+-
4|5|6
-+-+-
7|8|9
Jugador 1: entre número de casilla:
|#
;Salvedad: Este programa está construido para hacer exactamante lo solicitado al ejecutarlo, sin efectuar
;cambios en ningún lugar del código, no está pensado para otras funciones, se garantiza resultado SOLO ingresando los datos solicitados en caso de
;ingresar otro tipo de dato en el lugar que no se solicitan pueden generarse errores.

(define X "x");X identificador que almacena la letra x
(define O "o");O identificador que almacena la letra o
(define casillasi "123456789");casillasi identificador que almacena las casillas originales
(define casillasmod (string-copy casillasi));casillasmod identificador que almacena una copia de casillasi y será modificado
(define (impri estructura);impri función que imprime la estructura
  (printf (substring estructura 0 1))
  (printf "|")
  (printf (substring estructura 1 2))
  (printf "|")
  (printf "~a\n" (substring estructura 2 3))
  (printf "-+-+-\n")
  (printf (substring estructura 3 4))
  (printf "|")
  (printf (substring estructura 4 5))
  (printf "|")
  (printf "~a\n" (substring estructura 5 6))
  (printf "-+-+-\n")
  (printf (substring estructura 6 7))
  (printf "|")
  (printf (substring estructura 7 8))
  (printf "|")
  (printf "~a\n" (substring estructura 8 9))
);fin de la definición de la función
(define (jugador j);jugador función que determia cuál jugador debe jugar
  (if (= (remainder j 2) 0)
      2
      1
  )
);fin de la definición de la función
(define (juego turno);juego función que verifica si aún hay casillas por jugar
  (if (= turno 10)
      (printf "El juego ha terminado, no hay movimientos restantes")
      (begin
        (printf "Jugador ~a: entre número de casilla: "(jugador turno))
        (validar (read) (+ turno 1))
        (if (string? (ganador casillasmod))
            (juego (+ turno 1))
            (void)
        )
      )
  )
);fin de la definición de la función
(define (validar rango turno);validar función que valida y altera según corresponda la casilla solicitada por el usuario
  (if (or (< rango 1) (> rango 9))
      (begin
        (printf "\n")
        (printf "Ingrese un número válido [1-9]: ")
        (validar (read) turno)
      )
      (if (or (equal? (string-ref casillasmod (- rango 1)) #\x)(equal? (string-ref casillasmod (- rango 1)) #\o))
          (begin
            (printf "\nCasilla ya jugada\n")
            (printf "\nJugador ~a: entre un número de casilla: " (jugador (- turno 1)))
            (validar (read) turno)
          )
          (if (= (remainder turno 2) 0)
              (begin
                (string-set! casillasmod (- rango 1) (string-ref X 0))
                (printf "\n")
                (impri casillasmod)
              )
              (begin
                (string-set! casillasmod (- rango 1) (string-ref O 0))
                (printf "\n")
                (impri casillasmod)
              )
          )
      )
  )
);fin de la definición de la función
(define (ganador casillas);ganador función que valida si hay un ganador verificando cado posible solución al juego
  (cond
    ((and (equal? (substring casillas 0 1) (substring casillas 1 2)) (equal? (substring casillas 1 2) (substring casillas 2 3))) (printf "¡Ganó en la primera linea horizontal!"))
    ((and (equal? (substring casillas 3 4) (substring casillas 4 5)) (equal? (substring casillas 4 5) (substring casillas 5 6))) (printf "¡Ganó en la segunda linea horizontal!"))
    ((and (equal? (substring casillas 6 7) (substring casillas 7 8)) (equal? (substring casillas 7 8) (substring casillas 8 9))) (printf "¡Ganó en la tercera linea horizontal!"))
    ((and (equal? (substring casillas 0 1) (substring casillas 3 4)) (equal? (substring casillas 3 4) (substring casillas 6 7))) (printf "¡Ganó en la primera linea vertical!"))
    ((and (equal? (substring casillas 1 2) (substring casillas 4 5)) (equal? (substring casillas 4 5) (substring casillas 7 8))) (printf "¡Ganó en la segunda linea vertical!"))
    ((and (equal? (substring casillas 2 3) (substring casillas 5 6)) (equal? (substring casillas 5 6) (substring casillas 8 9))) (printf "¡Ganó en la tercera linea vertical!"))
    ((and (equal? (substring casillas 0 1) (substring casillas 4 5)) (equal? (substring casillas 4 5) (substring casillas 8 9))) (printf "¡Ganó digonalmente!"))
    ((and (equal? (substring casillas 2 3) (substring casillas 4 5)) (equal? (substring casillas 4 5) (substring casillas 6 7))) (printf "¡Ganó digonalmente!"))
    (else "")
  )
);fin de la definición de la función


(impri casillasmod)
(juego 1)