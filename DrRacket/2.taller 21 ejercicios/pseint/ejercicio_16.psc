Algoritmo eje_16
	Escribir 'Este programa, solicita la cantidad de piezas adquiridas y su valor unitario con respecto a las siguientes caracter�sticas va a imprimir, Cantidad de dinero de la empresa invertido; Valor del pr�stamo realizado al banco; Valor del cr�dito solicitado al fabricante; Inter�s total cobrado por el fabricante.'
	Escribir '- Si el monto total de la compra excede de $500000 la empresa tendr� la capacidad de invertir de su propio dinero un 55% del monto de la compra, pedir prestado al banco un 30% y el resto lo pagara solicitando un cr�dito al fabricante.'
	Escribir '- Si el monto total de la compra no excede de $500000 la empresa tendr� capacidad de invertir de su propio dinero un 70% y el restante 30% lo pagar� solicitando cr�dito al fabricante.'
	Escribir '- El fabricante cobra por concepto de intereses un 20% sobre la cantidad que se le pague a cr�dito.'
	Escribir 'Ingrese la cantidad de piezas adquiridas: '
	Leer pz
	Escribir 'Ingrese el costo unitario de las piezas: '
	Leer val
	tot <- val*pz
	Si tot>500000 Entonces
		Inv <- tot*0.55
		pres <- tot*0.30
		cre <- tot*0.15
		int <- cre*0.20
		Escribir 'Cantidad de dinero de la empresa invertido: ',Inv
		Escribir 'Valor del pr�stamo solicitado al banco: ',pres
		Escribir 'Valor del cr�dito solicitado al fabricante: ',cre
		Escribir 'Inter�s cobrado por el fabricante: ',int
	SiNo
		Inv <- tot*0.70
		pres <- 0
		cre <- tot*0.30
		int <- cre*0.20
		Escribir 'Cantidad de dinero de la empresa invertido: ',Inv
		Escribir 'Valor del pr�stamo solicitado al banco: ',pres
		Escribir 'Valor del cr�dito solicitado al fabricante: ',cre
		Escribir 'Inter�s cobrado por el fabricante: ',int
	FinSi
FinAlgoritmo
