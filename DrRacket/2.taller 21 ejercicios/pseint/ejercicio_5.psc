Algoritmo eje_5
	Escribir 'Este programa leyendo por teclado la antig�edad en a�os, calcula el sueldo mensual que le corresponde al trabajador de una empresa que cobra 40.000 euros anuales, el programa debe realizar los c�lculos en funci�n de los siguientes criterios: '
	Escribir 'a. Si lleva m�s de 10 a�os en la empresa se le aplica un aumento del 10%.'
	Escribir 'b. Si lleva menos de 10 a�os pero m�s que 5 se le aplica un aumento del 7%.'
	Escribir 'c. Si lleva menos de 5 a�os pero m�s que 3 se le aplica un aumento del 5%.'
	Escribir 'd. Si lleva menos de 3 a�os se le aplica un aumento del 3%.'
	Escribir 'Entre el n�mero de a�os de antig�edad del trabajador'
	Leer time
	Si time>10 Entonces
		Escribir 'El sueldo mensual es de 3.666,67 euros'
	SiNo
		Si time<=10 Y time>5 Entonces
			Escribir 'El sueldo mensual es de 3.566,67 euros'
		SiNo
			Si time<=5 Y time>3 Entonces
				Escribir 'El sueldo mensual es de 3.500 euros'
			SiNo
				Si time<=3 Entonces
					Escribir 'El sueldo mensual es de 3.433,33 euros'
				FinSi
			FinSi
		FinSi
	FinSi
FinAlgoritmo
