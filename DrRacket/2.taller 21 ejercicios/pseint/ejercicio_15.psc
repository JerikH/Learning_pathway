Algoritmo eje_15
	Escribir 'Este programa, solicita al usuario la cantidad de camisas compradas y el valor total de las mismas, e imprime el valor final aplicando un descuento basándose en las siguientes características.'
	Escribir '-Si se compran tres(3) camisas o más se aplica un 20% de descuento sobre el costo ingresado.'
	Escribir '-Si se compran menos de tres(3) camisas se aplica un 10% de descuento sobre el costo ingresado.'
	Escribir 'Ingrese la cantidad de camisas: '
	Leer cami
	Escribir 'Ingrese el costo total de las camisas: '
	Leer val
	Si cami >= 3 Entonces
		pag <- val*0.80
		Escribir 'El total a pagar por concepto de las camisas es de: ',pag
	SiNo
		pag = val * 0.90
		Escribir 'El total a pagar por concepto de las camisas es de: ', pag
	FinSi
FinAlgoritmo
