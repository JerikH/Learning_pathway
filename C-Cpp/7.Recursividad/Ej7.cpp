/*
7-. Se pide hacer un programa tal que, imprima los primeros números primos después del uno ( 1) hasta el
número n que le ingrese por teclado. (Ejemplo: 1 2 3 5..).
	Jerik David Hincapie Bedoya
*/
#include <stdio.h>
#include <locale.h>

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

void cont(int i, int c){
	if(i == 1){
		if(esPrimo((c + 1), ((c + 1) / 2))){
			printf("%i", (c + 1));
		}
	}
	else{
		if(esPrimo((c + 1), ((c + 1) / 2))){
			printf("%i ", (c + 1));
		}
		cont((i - 1), (c + 1));
	}
}

int main(){
	setlocale(LC_ALL, "Spanish");
	int i;
	printf("--- Este programa imprime los primeros números primos iniciando por el 1 hasta el número ingresado ---\n");
	printf("Ingrese el número hasta el que desea contar primos: ");scanf("%i", &i);
	printf("1 "); //Esta linea se ejecuta en cumplimiento con el ejemplo solicitado en el enunciado, pero no es primo.
	cont(i, 0);
	return 0;
}
