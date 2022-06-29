#lang racket
;Fecha de publicación: 16/04/2021
;Fecha de creación: 15/04/2021
;Hora de creación: 08:15 am
;versión del código: 4.7
;Autor: Ing(c).Jerik David Hincapie Bedoya
;Lenguaje utilizado: DrRacket
;Versión del lenguaje utilizado: 8.0
;Presentado a: PhD Ricardo Moreno Laverde
;Universidad Tecnológica de Pereira
;Programa de Ingeniería de Sistemas y Computación
;Este programa permite jugar el juego memorama empleando para esto la siguiente estructura.
#|
JUEGO CONCENTRESE (MEMORAMA) Numero de parejas = 
+---+---+---+---+---+---+---+---+
| 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 |
+---+---+---+---+---+---+---+---+
Entre primera opción:
|#
;Salvedad: Este programa está construido para hacer exactamante lo solicitado al ejecutarlo, sin efectuar
;cambios en ningún lugar del código, no está pensado para otras funciones, se garantiza resultado SOLO ingresando los datos solicitados en caso de
;ingresar otro tipo de dato en el lugar que no se solicitan pueden generarse errores.

(define can (make-string 8 #\-)); can identificador empleado para almacenar la cadena de caracteres aleatorios
(define cad "&&++@@**"); cad identificador empleado para almacenar la cadena de caracteres original
(define parej 0); parej, identificador empleaod para almacenar la cantidad de parejas que en un instante de tiempo se han encontrado
(define oculto (string #\1#\2#\3#\4#\5#\6#\7#\8)); oculto, identificador empleado para contener la cadena de números que forman la estructura del juego, aquí mismo se harán los cambios cuando se destapan las casillas
(define ocultocopi (string #\1#\2#\3#\4#\5#\6#\7#\8)); ocultocopi, identificador empleado para almacenar una copia del identificador oculto
(define dat (string #\1)); dat, identificador de control
(define (orden cad can ran i); orden, función que se encarga de crear la cadena aleatoria
  (if (<= i 7)
      (if (equal? (string-ref can ran) #\-)
          (begin
            (string-set! can ran (string-ref cad i))
            (orden cad can (random 0 8) (+ i 1))
          )
          (orden cad can (random 0 8) i)
      )
      (impri parej cad can oculto 0 0)
  )
);fin de la definición de la función
(define (med a1 a2 a3 a4 a5 a6 a7 a8); med función que imprime la parte media de la estructura
  (printf "| ~a | ~a | ~a | ~a | ~a | ~a | ~a | ~a |" a1 a2 a3 a4 a5 a6 a7 a8)
);fin de la definición de la función
(define bor "+---+---+---+---+---+---+---+---+");bor identificador que almacena la estructura de los bordes
(define (impri parej cad can oculto n acti);impri función que valida si aún faltan parejas por encontrar y llama la función que imprime la estructura
  (if (< parej 4)
      (begin
        (estructura parej cad can oculto)
        (if (= acti 2)
            (begin
              (printf "Desea continuar(s/n) ")
              (continuar (read) parej n oculto dat)
            )
            (proce parej 5 (+ n 1) oculto (+ n 1) dat)
        )
      )
      (begin
        (estructura parej cad can oculto)
        (printf "Felicidades! Ganaste\n\n")
        (sleep 1500000)
      )
  )
);fin de la definición de la función
(define (estructura parej cad can oculto);estructura, función que imprime la estructura
  (printf "\n")
  (printf "JUEGO CONCENTRESE (MEMORAMA) Numero de parejas = ~a\n" parej)
  (printf "~a\n" bor)
  (med (string-ref oculto 0) (string-ref oculto 1) (string-ref oculto 2) (string-ref oculto 3) (string-ref oculto 4) (string-ref oculto 5) (string-ref oculto 6) (string-ref oculto 7))
  (printf "\n~a\n" bor)
);fin de la definición de la función
(define (continuar d parej n oculto dat);continuar, función que pregunta al usuario si de sea continuar jugando
  (if (or (equal? d 's) (equal? d 'S))
      (begin
        (clonar ocultocopi oculto 0)
        (impri parej cad can oculto 0 0)
      )
      (if (or (equal? d 'n) (equal? d 'N))
          (begin
            (printf "Gracias por jugar\n\n")
            (sleep 1500000)
          )
          (sleep 1500000)
      )
  )
);fin de la definición de la función
(define (lectura parej n oculto n1 dat);lectura, función que lee las entradas por teclado del usuario
  (validar (read) oculto parej n n1 dat)
);fin de la definición de la función
(define (proce parej op n oculto n1 dat);proce, función que hace los llamados para que el procesamiento de los números se pueda llevar a cabo
  (if (= n 1)
      (begin
        (printf "Entre primera opción: ")
        (lectura parej n oculto n1 dat)
      )
      (if (= n 2)
          (begin
            (printf "Entre segunda opción: ")
            (lectura parej n oculto n1 dat)
          )
          (void)
      )
  )
  (string-set! oculto (- op 1) (string-ref can (- op 1)))
  (impri parej cad can oculto n1 0)
);fin de la definición de la función
(define (revisar dat op oculto parej);revisar, función que verifica si los datos destapados son pareja
  (if (equal? (string-ref oculto (- (string->number dat) 1)) (string-ref oculto (- op 1)))
      (begin
        (clonar oculto ocultocopi 0)
        (impri (+ parej 1) cad can oculto 0 2)
      )
        (impri parej cad can oculto 0 2)
  )
);fin de la definición de la función
(define (clonar oculto ocultocopi n); clonar, función que clona una cadena de caracteres en otra
  (if (<= n 7)
      (begin
        (string-set! ocultocopi n (string-ref oculto n))
        (clonar oculto ocultocopi (+ n 1))
      )
      (void)
  )
);fin de la definición de la función
(define (validar op oculto parej n n1 dat);validar, funición que verifica si el dato ingresado es válido
  (if (= n 2)
      (begin
        (if (equal? (string-ref oculto (- op 1)) (string-ref (number->string op) 0))
            (begin
              (string-set! oculto (- op 1) (string-ref can (- op 1)))
              (revisar dat op oculto parej)
            )
            (begin
              (printf "Casilla ya jugada\n")
              (printf "Entre segunda opción: ")
              (lectura parej n oculto n1 dat)
            )
        )
      )
      (begin
        (if (equal? (string-ref oculto (- op 1)) (string-ref (number->string op) 0))
            (begin
              (string-set! dat 0 (string-ref (number->string op) 0))
              (proce parej op (+ n 2) oculto n1 dat)
            )
            (begin
              (printf "Casilla ya jugada\n")
              (printf "Entre primera opción: ")
              (lectura parej n oculto n1 dat)
            )
        )
      )
  )
);fin de la definición de la función
(orden cad can (random 0 8) 0)