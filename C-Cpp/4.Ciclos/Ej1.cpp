/*
Leer un n�mero entero y mostrar todos los enteros comprendidos entre 1 y el n�mero le�do.
*/
#include <stdio.h>
#include <locale.h>
int main(){
	setlocale(LC_ALL, "Spanish");
	int n;
	printf("Ingrese un n�mero entero: ");scanf("%i", &n);
	for(int i = 1; i <= n; i++){
		printf("%i\n", i);
	}
	return 0;
}
