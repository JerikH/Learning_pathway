/*
29. Leer un número entero y determinar a cuánto es igual el primero de sus dígitos.
*/
#include <stdio.h>
#include <locale.h>
int main(){
	setlocale(LC_ALL, "Spanish");
	int n;
	printf("Ingrese un número entero: ");scanf("%i", &n);
	if(n > 9 || n < -9){
		do{
			n /= 10;
		}while(n > 9 || n < -9);
	}
	printf("El primer digito del número ingresado es: %i", n);
	return 0;
}
