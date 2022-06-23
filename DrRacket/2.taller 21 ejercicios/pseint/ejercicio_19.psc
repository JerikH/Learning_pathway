Algoritmo eje_19
	Escribir 'Este programa, solicita la cantidad de docenas adquiridas del producto y el subtotal obtenido por dichos productos, y tras a aplicar los siguientes beneficios ofrecidos por el supermercado imprime, el monto de la compra, el monto del descuento, el monto a pagar y el número de unidades de obsequio por la compra de cierta cantidad de docenas del producto.'
	Escribir '-Ofrece un descuento del 15% por la compra de más de 3 docenas.'
	Escribir '-Ofrece un descuento del 10% por la compra de 3 docenas o menos.'
	Escribir '-Por cada docena en exceso luego de las 3 primeras se obsequia una unidad de producto.'
	Escribir 'Entre la cantidad de docenas adquiridas: '
	Leer doc
	Escribir 'Entre el costo unitario de dichas docenas: '
	Leer unit
	Si doc>3 Entonces
		tot <- unit*doc
		desc <- tot*0.15
		pag <- tot-desc
		obs <- doc-3
		Escribir 'El monto total de la compra es de: ',tot
		Escribir 'El monto del descuento es de: ',desc
		Escribir 'El monto a pagar es: ',pag
		Escribir 'Cantidad de unidades de obsequio que recibirá por la compra: ',obs
	SiNo
		tot <- unit*doc
		desc <- tot*0.10
		pag <- tot-desc
		obs <- 0
		Escribir 'El monto total de la compra es de: ',tot
		Escribir 'El monto del descuento es de: ',desc
		Escribir 'El monto a pagar es: ',pag
		Escribir 'Cantidad de unidades de obsequio que recibirá por la compra: ',obs
	FinSi
FinAlgoritmo
