/*
Leer 10 números enteros, almacenarlos en un vector. Luego leer un entero y determinar si
este último entero se encuentra entre los 10 valores almacenados en el vector.
*/
#include <stdio.h>
#include <locale.h>

void datos(int numeros[10]){
	printf("Por favor ingrese 10 números enteros: \n");
	for(int c = 0; c < 10; c++){
		scanf("%i", &numeros[c]);
		fflush(stdin);
	}
}

int comparar(int numeros[10], int n){
	int c = 0;
	for(int i = 0; i < 10; i++){
		if(numeros[i] == n){
			c++;
		}
	}
	return c;
}

int main(){
	setlocale(LC_ALL, "Spanish");
	int numeros[10];
	int n;
	datos(numeros);
	printf("\nIngrese un valor entero a comparar con el vector: "); scanf("%i", &n);
	printf((comparar(numeros, n)) >= 1 ? "El número si se encuentra por lo menos una vez dentro del vector" : "El número no se encuentra dentro del vector");
	return 0;
}
