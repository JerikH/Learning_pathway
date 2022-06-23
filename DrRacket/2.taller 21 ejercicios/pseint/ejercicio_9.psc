Algoritmo eje_9
	Escribir 'Este programa, lee dos valores. Interés(%) y Capital. Si el dinero recibido por intereses es mayor que $7000, se le indicara al inversionista que invierta, de lo contrario se le indicara que no debe invertir'
	Escribir 'Entre el interés en % : '
	Leer In
	Escribir 'Entre el capital a invertir en $ : '
	Leer Ca
	Saldo = (Ca * In) + Ca
	Si Saldo > 7000 Entonces
		Escribir 'INVIERTA SU SALDO SERA $' Saldo
	SiNo
		Escribir 'NO INVIERTA'
	FinSi
FinAlgoritmo
