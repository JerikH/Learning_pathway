Algoritmo eje_20
	Escribir 'Este programa, solicita al usuario digitar la cantidad de kilómetros que ha recorrido con el vehículo rentado, con respecto a esto, le dice el total a pagar por el servicio (dentro de dicho costo ya se encuentra incluido el costo del IVA), basándose en las siguientes características calcula el costo del servicio:'
	Escribir '- Se cobra un costo fijo de $400000 por los primeros 300Km recorridos'
	Escribir '- Para recorridos mayores a 300Km y como máximo de 1000Km se cobra el costo fijo y un costo adicional de $15000 por cada uno de los kilómetros que superan los 300.'
	Escribir '- Para recorridos mayores a 1000Km se cobra $10000 por cada uno de los kilómetros que superan los 1000, y se cobran las dos anteriores condiciones '
	Escribir '- Dentro del costo que se obtiene con lo antes dicho está incluido el 20% correspondiente al IVA'
	Escribir 'Ingrese la cantidad de kilómetros recorridos: '
	Leer km
	cf = 400000
	Si km <= 300 Entonces
		im = cf * 0.20
		Escribir 'El monto total a pagar es de: $', cf
		Escribir 'El valor del IVA incluido en esta venta es de: $', im
	SiNo
		Si km <= 1000 Entonces
			c = cf + ((km - 300) * 15000)
			im = c * 0.20
			Escribir 'El monto total a pagar es de: $', c
			Escribir 'El valor del IVA incluido en esta venta es de: $', im
		SiNo
			c = cf + ((1000 - 300) * 15000) + ((km - 1000) * 10000)
			im = c * 0.20
			Escribir 'El monto total a pagar es de: $', c
			Escribir 'El valor del IVA incluido en esta venta es de: $', im
		FinSi
	FinSi
FinAlgoritmo
