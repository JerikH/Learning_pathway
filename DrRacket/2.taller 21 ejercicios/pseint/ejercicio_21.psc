Algoritmo eje_21
	Escribir 'Este programa, solicita un n�mero de 3 cifras (N <= 999 Y N >= 100) e imprime si este es capic�o (es igual al rev�s del n�mero original)'
	Escribir 'Ejemplo = 323, 101'
	Escribir 'Entre un n�mero de 3 cifras: '
	Leer Nu
	Si (Nu MOD 10)=trunc(Nu/100) Entonces
		Escribir 'El n�mero es capic�o'
	SiNo
	FinSi
FinAlgoritmo
