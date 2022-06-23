#lang racket
;Fecha de creación: 2021/02/03
;Hora de creación: 07:05pm
;autor: Ing(c).Jerik David Hincapie Bedoya
;presentado a: PhD.Ricardo Moreno Laverde
;lenguaje: DrRacket.
;versión de DrRacket: 8.0.0
;versión de programa: 1.0
;Nombre del SO: Microsoft Windows 10 pro
;versión de SO: 10.0.18363 compilación 18363
;Universidad Tecnológica de Pereira.
;Programa de Ingeniería de Sistemas y Computación.
;Este programa solicita al usuario dos números que representan el interés de beneficio y el capital inicial de la inversión respectivamente
;e imprime si debe invertir o no, considerando que si es válido invertir solo si el beneficio por el interés es mayor a $7000
;Programa construido para ofrecer un correcto funcionamiento solo con números positivos

(displayln "Este programa, lee dos valores. Interés(%) y Capital. Si el dinero recibido por intereses es mayor que $7000, se le indicara al inversionista que invierta, de lo contrario se le indicara que no debe invertir")
(display "Entre el interés en % : ")
(define In (read));In = Variable empleada para almacenar el interés que el usuario ingresa
(display "Ente el capital a invertir en $ : ")
(define Ca (read));Ca = Variable empleada para almacenar el capital inicial que el usuario ingresa
(define Saldo (+ (* Ca In) Ca));Saldo = Variabe empleada para almacenar el resultado del saldo final que se tiene posterior al beneficio de intereses 
(if (> Saldo 7000)
    (begin
    (display "INVIERTA SU SALDO SERA $ ")
    (display Saldo)
    )
    (display "NO INVIERTA")
)