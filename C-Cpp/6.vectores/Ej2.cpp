/*
Leer 10 n�meros enteros, almacenarlos en un vector y mostrar en pantalla todos los enteros
comprendidos entre 1 y cada uno de los n�meros almacenados en el vector.
*/

#include <stdio.h>
#include <locale.h>

void datos(int numeros[10]){
	printf("Por favor ingrese 10 n�meros enteros: \n");
	for(int c = 0; c < 10; c++){
		scanf("%i", &numeros[c]);
		fflush(stdin);
	}
}

void imprimir(int numeros[10]){
	for(int n = 0; n < 10; n++){
		printf("\nPosici�n %i del vector, n�mero %i\n", n, numeros[n]);
		if(numeros[n] < 0){
			for(int j = 0; j > numeros[n]; j--){
				printf("%i  ", j);				
			}
		}
		else if(numeros[n] > 0){
			for(int j = 2; j < numeros[n]; j++){
				printf("%i  ", j);
			}
		}
	}
}

int main(){
	setlocale(LC_ALL, "Spanish");
	int numeros[10];
	datos(numeros);
	imprimir(numeros);
	return 0;
}
