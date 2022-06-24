/*
Programa que calcula la sumatoria de los n primeros cubos
Jerik David Hincapie Bedoya
*/
#include <stdio.h>
#include <locale.h>
#include <math.h>
int main(){
	setlocale(LC_ALL, "Spanish");
	int n, s;
	printf(".....Programa que calcula la sumatoria de los n primeros cubos.....\n");
	printf("Ingrese numero de términos: "); scanf("%i", &n);
	s = (pow(n, 2) * pow((n+1), 2)) / 4;
	printf("La suma de los términos es: %i", s);
	return 0;
}
