/*
Leer 10 números enteros, almacenarlos en un vector y determinar cuántos números de los
almacenados en dicho vector son primos y comienzan por 5.
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

bool esPrimo(int numero) {
  	if (numero == 0 || numero == 1 || numero == 4) return false;
  	for (int x = 2; x < numero / 2; x++) {
	    if (numero % x == 0) return false;
  	}
  	return true;
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
		if(abs(valor) == i && esPrimo(numeros[n])){
			resultado++;
		}
	}
	return resultado;
}

int main(){
	setlocale(LC_ALL, "Spanish");
	long int numeros[10];
	datos(numeros);
	printf("En el vector existen %i números que inician con el número 5 y son primos.", contar(numeros, 5));
	return 0;
}
