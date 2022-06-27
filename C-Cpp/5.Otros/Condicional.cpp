/*
Leer un número entero y determinar si es positivo o negativo o si es 0.
		agregar la condición de si es par
*/
#import <stdio.h>
#include <locale.h>
int main(){
	setlocale (LC_CTYPE, "Spanish");
	long int n;
	printf("Por favor ingrese el número: ");scanf("%i", &n);
	if(n > 0){
		if((n % 2) == 0){
			printf("El número ingresado es positivo y par");
		}
		else{
			printf("El número ingresado es positivo e impar");	
		}
	}
	else if(n < 0){
		if((n % 2) == 0){
			printf("El número ingresado es negativo y par");
		}
		else{
			printf("El número ingresado es negativo e impar");	
		}
	}
	else{
		printf("El número es 0, neutro y par");	
	} 
	return 0;
}
