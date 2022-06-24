/*
Dado el radio de una circunferencia se pide calcular e imprimir su área
           Área = pi * r ^ (2)
Realizado por: Jerik David Hincapie Bedoya
*/
#import <stdio.h>
#import <math.h>
#include <locale.h>
int main(){
	setlocale (LC_CTYPE, "Spanish");
	float r,A,pi = 3.1415926535;
	printf("Por favor ingrese el valor del radio de la circunferencia: ");scanf("%f", &r);
	A = pi * pow(r, 2);
	printf("El área de la circunferencia indicada es: %.3f", A);
	return 0;
}
