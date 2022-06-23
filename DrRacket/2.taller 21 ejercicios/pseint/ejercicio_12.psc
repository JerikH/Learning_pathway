Algoritmo eje_12
	Escribir 'Este programa, solicita el tiempo en horas trabajado por un obrero e imprime el total que le será pagado por dicho tiempo, considerando que:'
	Escribir '- Si trabaja 40 horas o menos se le paga $16 por hora'
	Escribir '- Si trabaja más de 40 horas se le paga $16 por cada una de las primeras 40 horas y $20 por cada hora extra'
	Escribir 'Entre el tiempo en horas: '
	Leer time
	Si time <= 40 Entonces
		pago = time * 16
		Escribir 'El pago total por el tiempo trabajado es de $' pago
	SiNo
		pago = ((time - 40)*20) + (40 * 16)
		Escribir 'El pago total por el tiempo trabajado es de $' pago
	FinSi
FinAlgoritmo
