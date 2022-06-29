#lang racket
;Fecha de publicación: 16/04/2021
;Fecha de creación: 15/04/2021
;Hora de creación: 16:35 am
;versión del código: 3.2
;Autor: Ing(c).Jerik David Hincapie Bedoya
;Lenguaje utilizado: DrRacket
;Versión del lenguaje utilizado: 8.0
;Presentado a: PhD Ricardo Moreno Laverde
;Universidad Tecnológica de Pereira
;Programa de Ingeniería de Sistemas y Computación
;Este programa permite jugar el juego ahorcado empleando para esto la siguiente estructura.
#|
JUEGO AHORCADO
+----+
|          -----------
|      
|          Letras jugadas:                                                                                                     
|      
-----
|#
;Salvedad: Este programa está construido para hacer exactamante lo solicitado al ejecutarlo, sin efectuar
;cambios en ningún lugar del código, no está pensado para otras funciones, se garantiza resultado SOLO ingresando los datos solicitados en caso de
;ingresar otro tipo de dato en el lugar que no se solicitan pueden generarse errores.

;inicio definición de palabras a jugar
(define ola "ola")
(define pollito "pollito")
(define murcielago "murcielago")
(define universidad "universidad")
(define pereira "pereira")
(define utp "utp")
(define racket "racket")
(define recursividad "recursividad")
(define ciclos "ciclos")
(define datos "datos")
;fin definición de palabras a jugar

(define letras (make-string 100 #\space));letras identificador que almacenará las letras que a lo largo del juego el usuario ingresa
(define aleatorio (random  0 10));aleatorio identificador que almacena un número aleatorio entre [0 y 9]
(define (palabra);palabra, función que empleando el identificador aleatorio obtiene la palabra que se jugará
  (cond
    ((= aleatorio 0) ola)
    ((= aleatorio 1) pollito)
    ((= aleatorio 2) murcielago)
    ((= aleatorio 3) universidad)
    ((= aleatorio 4) pereira)
    ((= aleatorio 5) utp)
    ((= aleatorio 6) racket)
    ((= aleatorio 7) recursividad)
    ((= aleatorio 8) ciclos)
    ((= aleatorio 9) datos)
  ) 
);fin de la definición de la función
(define guia (make-string (string-length (palabra)) #\-));guia identificador que almacena una cadena de guiones del mismo largo que la palabra sirve para guiar al usuario

;inicio definición de partes del muñeco a formar
(define (cabeza errores)
  (if (>= errores 1)
      0
      " "
  )
);fin de la definición de la función
(define (pecho errores)
  (if (>= errores 2)
      "|"
      " "
  )
);fin de la definición de la función
(define (manoizquierda errores)
  (if (>= errores 3)
      "/"
      " "
  )
);fin de la definición de la función
(define (manoderecha errores)
  (if (>= errores 4)
      "\\"
      " "
  )
);fin de la definición de la función
(define (estomago errores)
  (if (>= errores 5)
      "|"
      " "
  )
);fin de la definición de la función
(define (pieizquierdo errores)
  (if (>= errores 6)
      "/"
      " "
  )
);fin de la definición de la función
(define (piederecho errores)
  (if (>= errores 7)
      "\\"
      " "
  )
);fin de la definición de la función
;fin definición de partes del muñeco a formar
(define (impri errores);impri, función que imprime la estructura del juego
  (printf "\n\nJUEGO AHORCADO
+----+
|    ~a     ~a
|   ~a~a~a
|    ~a     Letras jugadas: ~a
|   ~a ~a
-----
" (cabeza errores) guia (manoizquierda errores) (pecho errores) (manoderecha errores) (estomago errores) letras (pieizquierdo errores) (piederecho errores))
);fin de la definición de la función
(define (inicio letra error_acum errores);inicio función que hace los respectivos llamados para que el procesamiento sobre los datos ingresados se lleve a cabo
  (define guiacopia (string-copy guia))
  (letras_entradas letra error_acum)
  (buscar_letra letra 0)
  (if (equal? guiacopia guia)
      (begin
        (impri (+ 1 errores))
        (pierde errores error_acum)
      )
      (begin
        (impri errores)
        (gana error_acum errores)
      )
  )
);fin de la definición de la función
(define (letras_entradas letra ubicación);letras_entrada función que guarda en letras las letras que el usuario ha ingresado
  (string-set! letras ubicación (string-ref letra 0))
);fin de la definición de la función
(define largo (string-length (palabra)));largo, identificador que almacena el largo de la palabra en juego
(define (buscar_letra letra ubicación);buscar_letra función que busca la letra ingresada por el usuario en la palabra en juego
  (if (< ubicación largo)
      (if (equal? letra (substring (palabra) ubicación (+ ubicación 1)))
          (begin
            (string-set! guia ubicación (string-ref letra 0))
            (if (< ( + ubicación 1) largo)
                (if (equal? letra (substring (palabra) (+ ubicación 1) (+ ubicación 2)))
                    (string-set! guia (+ ubicación 1) (string-ref letra 0))
                    (buscar_letra letra (+ ubicación 1))
                )
                (void)
            )
          )
          (buscar_letra letra (+ ubicación 1))
      )
      (void)
  )
);fin de la definición de la función
(define (gana error_acum errores);gana función que le informa al usuario que ganó y termina el programa
  (if (equal? (palabra) guia)
      (printf "¡¡ GANASTE !! - fin del juego")
      (inicio (~a(read)) (+ error_acum 1) errores)
  )
);fin de la definición de la función
(define (pierde errores error_acum);pierde, función que le informa al usuario que perdió y termina el programa
  (if (= errores 6)
      (printf "Perdiste - fin del juego")
      (inicio (~a(read)) (+ error_acum 1) (+ errores 1))
  )
);fin de la definición de la función

(impri 0)
(inicio (~a(read)) 0 0)