/*
2. Hacer un programa que muestre y cuente la cantidad de divisores primos de un número.

	Jerik David Hincapie Bedoya
*/

#include <stdio.h>
#include <locale.h>

int contador = 0;

bool primo(int n, int x){
	if(x >= 2){
		if(n % x == 0) return false;
		return primo(n, (x - 1));
	}
	return true;
}
bool esPrimo(int numero, int x) {
	if (numero == 0 || numero == 1) return false;
	if(primo(numero, x)) return true;
  	else return false;
}

int div(int n, int i){
	if(i >= n / 2){
		if(n % i == 0){
			if(esPrimo(i, (i / 2))){
				printf("%i", i);
				contador = contador + 1;
			}
		}
	}
	else{
		if(n % i == 0){
			if(esPrimo(i, (i / 2))){
				printf("%i ", i);
				contador = contador + 1;
			}
			div(n, (i + 1));
		}
	}
}

int main(){
	setlocale(LC_ALL, "Spanish");
	int n, i = 2;
	printf("Por favor ingrese el valor a operar: ");scanf("%i", &n);
	div(n, i);
	printf("\nSon los divisores primos de %i, en total son %i", n, contador);
	return 0;
}

