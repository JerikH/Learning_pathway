/*
Leer un n�mero entero X:
a) Decir si es positivo o negativo.
b) Decir si es par o impar.
c) Leer otro n�mero Y y decir si X es m�ltiplo de y.
Jerik David Hincapie Bedoya
*/
#include <stdio.h>
#include <locale.h>

int main(){
	setlocale(LC_ALL, "Spanish");
	int X, Y;
	printf("Por favor ingrese un valor para X: ");scanf("%i", &X);
	printf("El n�mero ingresado %i ", X); printf((X > 0) ? "es positivo\n" : (X == 0) ? "es neutro\n" : "es negativo\n");
	printf("El n�mero ingresado %i ", X); printf(((X % 2) == 0) ? "es par\n" : "es impar\n");
	printf("\nPor favor ingrese un valor para Y: ");scanf("%i", &Y);
	printf("%i", X); printf(((X % Y) == 0) ? " SI es m�ltiplo de " : " NO es m�ltiplo de "); printf("%i", Y);
	return 0;
}
