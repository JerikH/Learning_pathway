/*
29. Leer un n�mero entero y determinar a cu�nto es igual el primero de sus d�gitos.
*/
#include <stdio.h>
#include <locale.h>
int main(){
	setlocale(LC_ALL, "Spanish");
	int n;
	printf("Ingrese un n�mero entero: ");scanf("%i", &n);
	if(n > 9 || n < -9){
		do{
			n /= 10;
		}while(n > 9 || n < -9);
	}
	printf("El primer digito del n�mero ingresado es: %i", n);
	return 0;
}
