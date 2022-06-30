#lang racket
;Fecha de publicación: 25/04/2021
;Hora: 01:50 am
;Versión de su código: v.3.2
;Autor: Ing(c)Jerik David Hincapie Bedoya
;Nombre del lenguaje utilizado: Racket
;Versión del lenguaje utilizado: 8.0
;Presentado a: PhD. Ricardo Moreno Laverde
;Universidad Tecnológica de Pereira
;Programa de ingeniería de Sistemas y Computación
;Este programa permite mover las fichas de un tablero de ajedrez en modo texto sin reglas
;Salvedad: ingresar el tipo de dato solicitado cuando es solicitado, dentro de los rangos explícitamente considerados como correctos, para cualquier otra entrada no
;          se garantiza resultado.
(define ubc (box 1)); ubc, identificador empleado para posteriormente almacenar la ubicación inicial de la ficha a mover
(define fi (box 1)); fi, identificador empleado para posteriormente almacenar la fila final a la cual se desea mover la ficha
(define co (box 1)); co, identificador empleado para posteriormente almacenar la columna final a la cual se desea mover la ficha
(define pos (box 1)); pos, identificador empleado para posteriormente almacenar la posicion en el tablero a la cual se desea mover la ficha
(define fich (box "aa")); fich, identificador empleado para posteriormente almacenar la ficha ingresada por el usuario
(define fil "1               2               3               4               5               6               7               8");fil, cadena empleada para almacenar los indices de cada fila (1, 2, 3 ... ,8)
(define log (string-copy "T1C1A1RBDBA2C2T2P1P2P3P4P5P6P7P8                                                                p1p2p3p4p5p6p7p8t1c1a1rndna2c2t2"));log, cadena que contiene todas las posiciones del tablero y donde se almacenarán todos los movimientos que se realicen.
;----------- Imprimir tablero-----------------------------------
(define (estructura s);inicio de la definición de la función estructura, quien es la encargada de imprirmir toda la estructura solicitada en el diseño de pantalla
  (printf   "\n\n         Fichas Blancas - Mayusculas\n")
  (printf   "     1    2    3    4    5    6    7    8")
  (impri_tab 0 126)
  (printf "\n  +----+----+----+----+----+----+----+----+\n")
  (printf   "         Fichas Negras - Minusculas")
);fin de la definición de la función
(define (impri_tab cont final); inicio de la definición de la función impri_tab quien es la encargada de imprimir una gran parte del tablero, es llamada desde la función (estructura)
  (if (<= cont final)
      (begin
        (if (= (remainder cont 16) 0)
            (printf "\n  +----+----+----+----+----+----+----+----+\n~a | ~a |" (substring fil cont (+ 1 cont))(substring log cont (+ 2 cont)))
            (printf " ~a |" (substring log cont (+ 2 cont)))
        )
        (impri_tab (+ 2 cont) final)
      )
      (void)
  )
);fin de la definición de la función
;-----------------------fin imprimir tablero--------------------
;----------------------funcion validar si ficha en tablero--------
(define (validar ubc); inicio de la definición de la función validar quien es la encargada de validar si la ficha ingresada por el usuario está o no en el tablero y con respecto a esto tomar acciones
  (printf "\nEntre ficha a jugar: ")
  (if (number? (buscarf 0 126 (~a (read))))
      (juego 1)
      (begin
        (printf "Ficha fuera del tablero")
        (validar 1)
      )
  )
);fin de la definición de la función
;--------------------fin validar si ficha en tablero---------------
;-----------------------función buscar ficha en el tablero--------
(define (buscarf cont final ficha); inicio de la definición de la función buscarf quien es la encargada de buscar la ficha ingresada por el usuario en todo el tablero 
  (if (<= cont final)
      (begin
        (if (equal? ficha (substring log cont (+ 2 cont)))
            (begin
              (set-box! ubc cont)
              (set-box! fich ficha)
              cont
            )
            (buscarf (+ 2 cont) final ficha)
        )
      )
      (void)
  )
);fin de la definición de la función
;----------------------fin buscar ficha en el tablero------------
;--------------------función que calcula la posicion inicial de la ficha (no usada)-------------------------------
(define (posicion_inicial s);inicio de la definición de la función encargada de calcular la posición inicial de la ficha ingresada por el usuario, función solicitada en el contrato pero no usada en la ejecución del programa
  (printf "columna inicial ~a\n" (+ 1 (/ (remainder (unbox ubc) 16) 2)))
  (printf "fila inicial ~a\n" (+ 1 (quotient (unbox ubc) 16)))
);fin de la definición de la función
;-----------------fin función que calcula la posicion inicial----------------------------------------------------
;---------------------funcion juego aquí se ejecuta el juego como tal apóyandose de las funciones anteriores------------------------
(define (juego s);inicio de la definición de la función juego quien es la encargada de solicitar la posición a la cual mover la ficha y realizar dicho movimiento si es que es válido
  (printf "Entre la Fila final: ")
  (set-box! fi (read))
  (rangof 1)
  (printf "Entre la Columna final: ")
  (set-box! co (read))
  (rangoc 1)
  (set-box! pos (+ (* 2 (- (unbox co) 1)) (* 16 (- (unbox fi) 1))))
  (cambiarS 0 (- (unbox ubc) 1))
  (estructura 1)
  (validar 1)
);fin de la definición de la función
;-----------------------------------------------fin función juego--------------------------------------------------------------------
;--------------------------------------------inicio funciones rango-------------------------------------------------------
(define (rangof s); inicio de la definición de la función rangof quien es la encargada de validar si el NÚMERO ingresado por el usuario para la fila es un número que realemnte corresponder a una fila
    (if (or (< (unbox fi) 1)(> (unbox fi) 8))
        (begin
          (printf "Fila inválida, Entre la Fila final: ")
          (set-box! fi (read))
        )
        (void)
    )
);fin de la definición de la función
(define (rangoc s); inicio de la definición de la función rangoc quien es la encargada de validar si el NÚMERO ingresado por el usuario para la columna es un número que realemnte corresponder a una columna
    (if (or (< (unbox co) 1)(> (unbox co) 8))
        (begin
          (printf "Columna inválida, Entre la Columna final: ")
          (set-box! co (read))
        )
        (void)
    )
);fin de la definición de la función
;-------------------------------------------fin funciones rango-------------------------------------------------------------------
;----------------------inicio funciones de movimiento de la ficha---------------------------------------------------------------------
(define (cambiarS cont count); inicio de la definición de la función cambiarS quien es la encargada de cambiar la posición de origen de la ficha por dos espacios en el tablero
  (if (<= 2 cont)
      (cambiarL 0 (- (unbox pos) 1));voy aqui
      (begin
        (string-set! log (+ count 1) #\ )
        (cambiarS (+ cont 1)(+ count 1))
      )
  )
);fin de la definición de la función
(define (cambiarL cont count); inicio de la definición de la función cambiarL quien es la encargada de cambiar la posición destino de la ficha por los dos carácteres de la ficha
  (if (<= 2 cont)
      (void)
      (begin
        (string-set! log (+ count 1) (string-ref (unbox fich) cont))
        (cambiarL (+ cont 1) (+ count 1))
      )
  )
);fin de la definición de la función
;------------------------fin funciones de movimiento de la ficha------------------------------------------------------------
(estructura 1)
(validar 1)