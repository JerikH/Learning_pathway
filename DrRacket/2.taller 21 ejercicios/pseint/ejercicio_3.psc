Algoritmo eje_3
	Escribir 'Este programa, lee un n�mero entre [1 y 7] e imprime el d�a que le corresponde en la semana. Referencia: 1=Lunes. 7=Domingo'
	Escribir 'Entre un n�mero'
	Leer dia
	Si dia = 1 Entonces
		Escribir 'Lunes'
	SiNo
		Si dia = 2 Entonces
			Escribir 'Martes'
		SiNo
			Si dia = 3 Entonces
				Escribir 'Mi�rcoles'
			SiNo
				Si dia = 4 Entonces
					Escribir 'Jueves'
				SiNo
					Si dia = 5 Entonces
						Escribir 'Viernes'
					SiNo
						Si dia = 6 Entonces
							Escribir 'S�bado'
						SiNo
							Escribir 'Domingo'
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
FinAlgoritmo
