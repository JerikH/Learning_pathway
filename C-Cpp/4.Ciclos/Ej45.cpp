/*
45. Leer un n�mero y calcularle el factorial a todos los enteros comprendidos entre 1 y el n�mero le�do.
*/
#include <stdio.h>
#include <locale.h>
#include <iostream>
using namespace std;

void factorial(int n){
	long double l = 1;
	for(int i = 1; i <= n; i++){
		l *= i;
	}
	cout << "Factorial de " << n << " -> " << l << endl;
}

int main(){
	setlocale(LC_ALL, "Spanish");
	int n;
	printf("Ingrese un n�mero entero positivo: "); scanf("%i", &n);
	if(n < 0){
		do{
			printf("Ingrese un n�mero entero POSITIVO: "); scanf("%i", &n);
		}while(n < 0);
	}
	for(int i = 1; i <= n; i++){
		factorial(i);
	}
	return 0;
}
