Algoritmo eje_13
	Escribir 'Este programa, solicita el tipo de actividad realizada (dormir o sentado en reposo), y el tiempo que se realiza dicha actividad en minutos, e imprime la cantidad de calor�as consumidas, considerando que'
	Escribir '- Para la actividad de dormir, se consume 1,08 calor�as por minuto. '
	Escribir '- Para la actividad de estar sentado en reposo, se consume 1,66 calor�as por minuto.'
	Escribir 'Entre el tipo de actividad: '
	Leer tipe
	Escribir 'Entre el tiempo que se realiza la actividad (minutos): '
	Leer time
	Si tipe = "dormir" Entonces
		Cal <- time * 1.08
		Escribir 'Se consumen ',Cal ' calor�as'
	SiNo
		Cal = time * 1.66
		Escribir 'Se consumen ',Cal ' calor�as'
	FinSi
FinAlgoritmo
