/*
Usando ciclos, calcule los n primeros números de fibonacci
Jerik David Hincapie Bedoya
*/
#include <stdio.h>
#include <locale.h>
int main (){
	setlocale(LC_ALL, "Spanish");
 	int n, x = 0, y = 1, z = 1;
 	printf("....Programa que calcula los n primeros números de fibonacci....\n");
 	printf("Ingrese el número de elementos: "); scanf("%i", &n);
 	printf("0 1 ");
 	for (int i = 1; i < (n - 1); i++){
	  	z = x + y;
	  	printf("%i ", z);
	  	x = y;
	  	y = z;
	}
 	return 0;
}
