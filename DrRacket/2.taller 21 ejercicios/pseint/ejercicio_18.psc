Algoritmo eje_18
	Escribir 'Este programa, solicita el tiempo que un usuario tuvo su veh�culo dentro del estacionamiento, digitando este de forma individual su parte en horas y en minutos, y luego se imprimir� el valor a pagar por el respectivo tiempo, considerando que,'
	Escribir '-El estacionamiento cobra $1800 por hora o fracci�n'
	Escribir 'Ingrese la cantidad de horas que el veh�culo estuvo en el estacionamiento: '
	Leer hr
	Escribir 'Ingrese la cantidad de minutos que el veh�culo estuvo en el estacionamiento: '
	Leer min
	Si min > 0 Entonces
		val = (hr + 1) * 1800
		Escribir 'El valor a pagar es ',val
	SiNo
		val = hr * 1800
		Escribir 'El valor a pagar es ', val
	FinSi
FinAlgoritmo
