/*Lea dos n�meros y diga si el primero es m�ltiplo del segundo.
Jerik David Hincapie Bedoya*/
#include <stdio.h>
#include <locale.h>

int main(){
	setlocale(LC_ALL, "Spanish");
	int n1, n2;
	printf("Por favor ingrese el primer n�mero: ");scanf("%i", &n1);
	printf("Por favor ingrese el segundo n�mero: ");scanf("%i", &n2);
	printf("%i", n1);
	printf(((n1 % n2) == 0) ? " SI es m�ltiplo de " : " NO es m�ltiplo de ");
	printf("%i", n2);
	return 0;
}
