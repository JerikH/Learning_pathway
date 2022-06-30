/*
9-. Calculo del factorial de un numero entero positivo ingresado por teclado, recordar los máximos por tipo de dato.
	Jerik David Hincapie Bedoya
	Nota: Se requiere del uso de librerías externas para trabajar con enteros más grandes.
*/
#include <stdio.h>
#include <locale.h>

unsigned long long fact(unsigned n){
	if(n <= 0){
		return 1;
	}
	else{
		return n * fact(n - 1);
	}
}

int main(){
	setlocale(LC_ALL, "Spanish");
	unsigned n;
	printf("Ingrese un entero positivo al que desea calcular el factorial: ");scanf("%d", &n);
	printf("El factorial de %d es: %d", n, fact(n));
	return 0;
}
