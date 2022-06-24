/*
Programa que convierta centímetros a pulgadas y libras a kilogramos.
Jerik David Hincapie Bedoya
*/
#include <stdio.h>
#include <locale.h>
int main () { 
	setlocale(LC_ALL, "Spanish");
	int x; 
	float pulgadas, kilo, distancia, peso;
	printf("¿Qué desea convertir, distancia o peso?\n");
	printf("Escriba 1 para distancia o 2 para peso\n");
	scanf("%i", &x);
	switch (x){
	  	case 1:
		   printf("Ingrese la distancia en centímetros: ");
		   scanf("%f", &distancia);
		   pulgadas = distancia / 2.54;
		   printf("Las pulgadas son: %.5f\n", pulgadas);
		break;
		case 2: 
		   printf("Ingrese el peso en libras: ");
		   scanf("%f", &peso);
		   kilo = peso * (1 / 2.205);
		   printf("Las kilogramos son: %.5f\n", kilo);
	    break;
		default:
		   printf("Opción no válida");
	}
	return 0;
}
