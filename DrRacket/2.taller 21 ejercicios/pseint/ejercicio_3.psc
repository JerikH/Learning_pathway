Algoritmo eje_3
	Escribir 'Este programa, lee un número entre [1 y 7] e imprime el día que le corresponde en la semana. Referencia: 1=Lunes. 7=Domingo'
	Escribir 'Entre un número'
	Leer dia
	Si dia = 1 Entonces
		Escribir 'Lunes'
	SiNo
		Si dia = 2 Entonces
			Escribir 'Martes'
		SiNo
			Si dia = 3 Entonces
				Escribir 'Miércoles'
			SiNo
				Si dia = 4 Entonces
					Escribir 'Jueves'
				SiNo
					Si dia = 5 Entonces
						Escribir 'Viernes'
					SiNo
						Si dia = 6 Entonces
							Escribir 'Sábado'
						SiNo
							Escribir 'Domingo'
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
FinAlgoritmo
