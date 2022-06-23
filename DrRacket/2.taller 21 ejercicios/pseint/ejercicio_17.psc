Algoritmo eje_17
	Escribir 'Este programa, solicita la altura en metros y el peso en kilogramos del usuario para calcular así su índice de masa corporal (IMC), y clasificándolo según los siguientes criterios:'
	Escribir 'IMC < 16 = Criterio de ingreso en hospital'
	Escribir '16 <= IMC < 17 = Infrapeso'
	Escribir '17 <= IMC < 18 = Bajo peso'
	Escribir '18 <= IMC < 25 = Peso normal (saludable)'
	Escribir '25 <= IMC < 30 = Sobrepeso (obesidad de grado I)'
	Escribir '30 <= IMC < 35 = Sobrepeso crónico (obesidad de grado II)'
	Escribir '35 <= IMC < 40 = Obesidad premórbida (obesidad de grado III)'
	Escribir 'IMC > 40 = Obesidad mórbida (obesidad de grado IV)'
	Escribir 'IMC = (peso [Kg]) / (altura [m])^2'
	Escribir 'Ingrese su peso en Kg: '
	Leer kg
	Escribir 'Ingrese su altura en metros: '
	Leer me
	imc <- kg/(me^2)
	Si imc<16 Entonces
		Escribir 'Su IMC es ',imc
		Escribir 'Usted se encuentra en criterio de ingreso en hospital'
	SiNo
		Si 16<=imc Y imc<17 Entonces
			Escribir 'Su IMC es ',imc
			Escribir 'Usted padece de infrapeso'
		SiNo
			Si 17<=imc Y imc<18 Entonces
				Escribir 'Su IMC es ',imc
				Escribir 'Usted padece de bajo peso'
			SiNo
				Si 18<=imc Y imc<25 Entonces
					Escribir 'Su IMC es ',imc
					Escribir 'Usted está en un peso normal (saludable)'
				SiNo
					Si 25<=imc Y imc<30 Entonces
						Escribir 'Su IMC es ',imc
						Escribir 'Usted padece de sobrepeso (obesidad de grado I)'
					SiNo
						Si 30<=imc Y imc<35 Entonces
							Escribir 'Su IMC es ',imc
							Escribir 'Usted padece de sobrepeso crónico (obesidad de grado II)'
						SiNo
							Si 35<=imc Y imc<40 Entonces
								Escribir 'Su IMC es ',imc
								Escribir 'Usted padece de obsedidad premórbida (obesidad de grado III)'
							SiNo
								Si imc>40 Entonces
									Escribir 'Su IMC es ',imc
									Escribir 'Usted padece de obesidad mórbida (obesidad de grado IV)'
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
FinAlgoritmo
