Algoritmo eje_7
	Escribir 'Este programa, lee dos(2) números, e imprime si ambos son pares o ambos son impares'
	Escribir 'Entre el primer numero '
	Leer N_1
	Escribir 'Entre el segundo numero '
	Leer N_2
	Si N_1 MOD 2 = 0 y N_2 MOD 2 = 0 Entonces
		Escribir 'Ambos son pares'
	SiNo
		Si N_1 MOD 2 = 1 y N_2 MOD 2 = 1 Entonces
			Escribir 'Ambos son impares'
		FinSi
	FinSi
FinAlgoritmo
