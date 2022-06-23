Algoritmo eje_11
	Escribir 'Este programa, solicita el subtotal de la compra realizada por un cliente, e imprime el total de la misma, sabiendo que para compras mayores a $100000 se aplica un descuento del 20%'
	Escribir 'Digite el subtotal de la compra(sin puntos ni caracteres especiales): '
	Leer Sub
	Si Sub > 100000 Entonces
		Tot = ((Sub*0.20)*(-1))+Sub
		Escribir 'El total de la compra es $' Tot
	SiNo
		Escribir 'El total de la compra es $' Sub
	FinSi
FinAlgoritmo
