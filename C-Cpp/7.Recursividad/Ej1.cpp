/*
1. Calcular la potencia de un número: Ej: 5 3 =125 recursivamente. Sin el uso de la función pow.

	Jerik David Hincapie Bedoya
*/

#include <stdio.h>
#include <locale.h>

int pot(int n, int p){
	if(p <= 0){
		return 1;
	}
	else{
		return n * pot(n, (p - 1));
	}
}

int main(){
	setlocale(LC_ALL, "Spanish");
	int n = 0, p = 0;
	printf("---- El siguiente programa calcula una potencia >= 0 de un número dado ----\n");
	printf("Por favor ingrese un número entero positivo que desea operar: ");
	scanf("%i", &n);
	printf("Por favor ingrese la potencia a la que desea elevar el número: ");
	scanf("%i", &p);
	printf("El resultado es: %i", pot(n, p));
	return 0;
}
