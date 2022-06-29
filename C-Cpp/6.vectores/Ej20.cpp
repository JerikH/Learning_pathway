/*
Leer 10 números enteros, almacenarlos en un vector y determinar cuántos números de los
almacenados en dicho vector comienzan por 34.
*/
#include <stdio.h>
#include <locale.h>
#include <math.h>

void datos(long int numeros[10]){
	printf("Por favor ingrese 10 números enteros: \n");
	for(int c = 0; c < 10; c++){
		scanf("%i", &numeros[c]);
		fflush(stdin);
	}
}

long int contar(long int numeros[10], int i){
	int resultado = 0;
	for(int n = 0; n < 10; n++){
		long int valor = numeros[n];
		if(numeros[n] > 99 || numeros[n] < -99){
			do{
				valor = valor / 10;
			}while(valor > 99 || valor < -99);
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
	printf("En el vector existen %i números que inician con el número 34.", contar(numeros, 34));
	return 0;
}
