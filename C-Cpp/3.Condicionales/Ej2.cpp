/*Lea dos números y diga si el primero es múltiplo del segundo.
Jerik David Hincapie Bedoya*/
#include <stdio.h>
#include <locale.h>

int main(){
	setlocale(LC_ALL, "Spanish");
	int n1, n2;
	printf("Por favor ingrese el primer número: ");scanf("%i", &n1);
	printf("Por favor ingrese el segundo número: ");scanf("%i", &n2);
	printf("%i", n1);
	printf(((n1 % n2) == 0) ? " SI es múltiplo de " : " NO es múltiplo de ");
	printf("%i", n2);
	return 0;
}
