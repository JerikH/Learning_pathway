/*
Leer 10 n�meros enteros, almacenarlos en un vector y determinar cu�ntos n�meros de los
almacenados en dicho vector comienzan con 3.
*/
#include <stdio.h>
#include <locale.h>
#include <math.h>

void datos(long int numeros[10]){
	printf("Por favor ingrese 10 n�meros enteros: \n");
	for(int c = 0; c < 10; c++){
		scanf("%i", &numeros[c]);
		fflush(stdin);
	}
}

long int contar(long int numeros[10], int i){
	int resultado = 0;
	for(int n = 0; n < 10; n++){
		long int valor = numeros[n];
		if(numeros[n] > 9 || numeros[n] < -9){
			do{
				valor = valor / 10;
			}while(valor > 9 || valor < -9);
		}
		if(abs(valor) == i){
			resultado++;
		}
	}
	return resultado;
}

int main(){
	setlocale(LC_ALL, "Spanish");
	long int numeros[10];
	datos(numeros);
	printf("En el vector existen %i n�meros que inician con el n�mero 3.", contar(numeros, 3));
	return 0;
}
