/*
5.Se pide hacer un programa tal que, dado un n�mero entero positivo, indique si es primo (Un n�mero es
  primo si y solo si es divisible exactamente por si mismo y por la unidad). Puede utilizar la funci�n anterior
  que calcula la cantidad de divisores de un n�mero.
  
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
int main(){
	setlocale(LC_ALL, "Spanish");
	int n;
	printf("Ingrese un n�mero a validar: ");scanf("%i", &n);
	int x = n/2;
	if(esPrimo(n, x)){
		printf("El n�mero %i es primo", n);
	}
	else{
		printf("El n�mero %i no es primo", n);
	}
	return 0;
}
