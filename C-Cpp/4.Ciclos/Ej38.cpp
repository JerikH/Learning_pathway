/*
38. Leer un número entero y mostrar en pantalla su tabla de multiplicar.
*/
#include <stdio.h>
#include <locale.h>
int main(){
	setlocale(LC_ALL, "Spanish");
	int n;
	printf("Ingrese un valor entero: "); scanf("%i", &n);
		printf("\nTabla del %i\n\n", n);
		for(int i = 1; i <= 10; i++){
			printf("%i x %i = %i\n", n, i, (n*i));
		}
		printf("\n");
	return 0;
}
