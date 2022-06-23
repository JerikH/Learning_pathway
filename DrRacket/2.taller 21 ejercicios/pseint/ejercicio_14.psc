Algoritmo eje_14
	Escribir 'Este programa, solicita la clave y el valor original de un producto, con base en estos datos imprimirá el valor final con un descuento aplicado, considerando que, '
	Escribir '- Clave 1 = 10% de descuento'
	Escribir '- Calve 2 = 20% de descuento'
	Escribir 'Entre la clave del producto'
	Leer cla
	Escribir 'Entre el valor original del producto'
	Leer val
	Si cla=1 Entonces
		pag <- val*0.90
		Escribir 'Clave de producto ingresada ',cla
		Escribir 'Valor original ingresado ',val
		Escribir 'Valor final con descuento ',pag
	SiNo
		Si cla=2 Entonces
			pag <- val*0.80
			Escribir 'Clave de producto ingresada ',cla
			Escribir 'Valor original ingresado ',val
			Escribir 'Valor final con descuento ',pag
		FinSi
	FinSi
FinAlgoritmo
