/*
6-. Sumar recursivamente, y sin usar (n(n+1))/2 los n�meros del 1 al n�mero n que le ingrese por teclado y mayor que 1. 
	Ej: n=5 1+2+3+4+5=15.
	Jerik David Hincapie Bedoya
*/
#include <stdio.h>
#include <locale.h>

int suma(int n){
	if(n <= 1){
		return 1;
	}
	else{
		return n + suma(n - 1);
	}
}

int main(){
	setlocale(LC_ALL, "Spanish");
	int n;
	printf("Ingrese un n�mero entero hasta el cual calcular la sumatoria (>= 1): ");scanf("%i", &n);
	printf("La sumatoria desde 1 hasta %i es: %i", n, suma(n));
	return 0;
}
