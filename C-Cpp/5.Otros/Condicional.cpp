/*
Leer un n�mero entero y determinar si es positivo o negativo o si es 0.
		agregar la condici�n de si es par
*/
#import <stdio.h>
#include <locale.h>
int main(){
	setlocale (LC_CTYPE, "Spanish");
	long int n;
	printf("Por favor ingrese el n�mero: ");scanf("%i", &n);
	if(n > 0){
		if((n % 2) == 0){
			printf("El n�mero ingresado es positivo y par");
		}
		else{
			printf("El n�mero ingresado es positivo e impar");	
		}
	}
	else if(n < 0){
		if((n % 2) == 0){
			printf("El n�mero ingresado es negativo y par");
		}
		else{
			printf("El n�mero ingresado es negativo e impar");	
		}
	}
	else{
		printf("El n�mero es 0, neutro y par");	
	} 
	return 0;
}
