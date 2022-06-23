Algoritmo eje_21
	Escribir 'Este programa, solicita un número de 3 cifras (N <= 999 Y N >= 100) e imprime si este es capicúo (es igual al revés del número original)'
	Escribir 'Ejemplo = 323, 101'
	Escribir 'Entre un número de 3 cifras: '
	Leer Nu
	Si (Nu MOD 10)=trunc(Nu/100) Entonces
		Escribir 'El número es capicúo'
	SiNo
	FinSi
FinAlgoritmo
