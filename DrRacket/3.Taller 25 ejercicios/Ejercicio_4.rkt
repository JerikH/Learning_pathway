#lang racket
;Fecha de publicación: 29/03/2021
;Fecha de creación: 26/03/2021
;Hora de creación: 13:30 pm
;versión del código: 1.5
;Autor: Ing(c).Jerik David Hincapie Bedoya
;Lenguaje utilizado: DrRacket
;Versión del lenguaje utilizado: 8.0
;Presentado a: PhD Ricardo Moreno Laverde
;Universidad Tecnológica de Pereira
;Programa de Ingeniería de Sistemas y Computación
;Este programa recibe un total de 75 números e imprime las siguientes características de los números ingresados y los números que se ingresaron.
;Cantidad de números Mayores a 150
;Número mayor y número menor encontrado en el grupo
;Cantidad de Números negativos encontrados
;Promedio de los Positivos Encontrados.

;Salvedad: Este programa está construido para hacer exactamante lo solicitado al ejecutarlo, sin efectuar
;cambios en ningún lugar del código, no está pensado para otras funciones; Solo se garantiza resultado con números enteros.

(displayln "Este programa lee desde el teclado un grupo de 75 números, diferentes a cero y al final de
leídos, imprime:
1.Cantidad de números Mayores a 150: 
2.Número mayor y número menor encontrado en el grupo: 
3.Cantidad de Números negativos encontrados:
4.Promedio de los Positivos Encontrados:")

(define suma 0);suma = se almacena el valor acumultavio de la suma de cada número positivo ingresado
(define nupos 0);nupos = en esta variable se almacena la cantidad de números positivos que hay en el grupo ingresado
(define nuneg 0);nuneg = en esta variable se almacena la cantidad de números negativos que hay en el grupo ingresado
(define may 0);may = en esta variable se almacena la cantidad de números mayores a 150 que hay en el grupo ingresado
(displayln "Ingrese un número diferente de 0")
(define co 1);co = esta variable es empleada como contador, para establecer una cantidad límite de digitos para el grupo a estudiar
(define it 1);it = esta variable es empleada como contador del ingreso que tiene el número en cuestión.
(define nu (read));nu = esta variable es empleada para almacenar el número ingresado
(define numen nu);numen = esta variable es empleada para almacenar el menor número del grupo ingresado
(define numax nu);numax = esta variable es empleada para almacenar el mayor número del grupo ingresado

(define (validarsi0 nu co it numen numax suma nupos nuneg may);inicio de la definición de la función que se encarga de validar si el número ingresado es 0
  (if (= nu 0)
      (begin
        (displayln "Error: Dato inválido. \nPor favor ingrese un número DIFERENTE de 0")
        (set! nu (read))
        (validarsi0 nu co it numen numax suma nupos nuneg may)
      )
      (proces nu co it numen numax suma nupos nuneg may)
      
  )
);fin de la definición de la función
(define (proces nu co it numen numax suma nupos nuneg may);inicio de la definición de la función que se encarga de procesar el número ingresado para clasificarlo
  (if (<= co 75)
      (begin
        (if (> nu 150)
            (set! may (+ may 1))
            (void)
        )
        (if (> nu 0)
            (begin
              (set! nupos (+ nupos 1))
              (set! suma (+ suma nu))
            )
            (void)
        )
        (if (< nu 0)
            (set! nuneg (+ nuneg 1))
            (void)
        )
        (if (< nu numen)
            (set! numen nu)
            (void)
        )
        (if (> nu numax)
            (set! numax nu)
            (void)
        )
        (begin
          (if (<= (+ co 1) 75)
              (begin
                (set! it (+ it 1))
                (printf "Entre el número ~a\n" it)
                (set! nu (read))
                (set! co (+ co 1))
                (validarsi0 nu co it numen numax suma nupos nuneg may)
              )
              (print nu co it numen numax suma nupos nuneg may)
          )
        )
      )
      (void)
  )
);fin de la definición de la función
(define (print nu co it numen numax suma nupos nuneg may);inicio de la definición de la función que se encarga de imprimir los resultados obtenidos
  (define prom (/ (abs suma) nupos))
  (printf "1.Cantidad de números Mayores a 150: ~a\n" may)
  (printf "2.Número mayor y número menor encontrado en el grupo: ~a  ~a\n" numax numen)
  (printf "3.Cantidad de Números negativos encontrados: ~a\n" nuneg)
  (printf "4.Promedio de los Positivos Encontrados: ~a\n" prom)
);fin de la definición de la función

(validarsi0 nu co it numen numax suma nupos nuneg may)