/*Lea tres valores enteros y los ordene:
a)De mayor a menor.
b)De menor a mayor.
*/
#include <stdio.h>
#include <locale.h>

int main(){
	setlocale(LC_ALL, "Spanish");
	int a, b, c;
	printf("Este programa ordenar� los n�meros que ingrese de mayor a menor y luego de menor a mayor, \nsi ingresa n�meros iguales se ubicaran de forma consecutiva\n\n");
	printf("Por favor ingrese el primer n�mero: ");scanf("%i", &a);
	printf("Por favor ingrese el segundo n�mero: ");scanf("%i", &b);
	printf("Por favor ingrese el tercer n�mero: ");scanf("%i", &c);
	if(a < b){
		if (a < c){
			if (b < c){
				printf("Los valores ordenados de mayor a menor son: %i %i %i\n", c,b,a);//a)
				printf("Los valores ordenados de menor a mayor son: %i %i %i\n", a,b,c);//b)
			}
			else{
				printf("Los valores ordenados de mayor a menor son: %i %i %i\n", b,c,a);//a)
				printf("Los valores ordenados de menor a mayor son: %i %i %i\n", a,c,b);//b)
			}
		}
		else{
			printf("Los valores ordenados de mayor a menor son: %i %i %i\n", b,a,c);//a)
			printf("Los valores ordenados de menor a mayor son: %i %i %i\n", c,a,b);//b)
		}
	}
	else{
		if (a < c){
			printf("Los valores ordenados de mayor a menor son: %i %i %i\n", c,a,b);//a)
			printf("Los valores ordenados de menor a mayor son: %i %i %i\n", b,a,c);//b)
		}
		else{
			if (c < b){
				printf("Los valores ordenados de mayor a menor son: %i %i %i\n", a,b,c);//a)
				printf("Los valores ordenados de menor a mayor son: %i %i %i\n", c,b,a);//b)
			}
			else{
				printf("Los valores ordenados de mayor a menor son: %i %i %i\n", a,c,b);//a)
				printf("Los valores ordenados de menor a mayor son: %i %i %i\n", b,c,a);//b)
			}
		}
	}
	return 0;
}
