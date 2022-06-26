/*
45. Leer un número y calcularle el factorial a todos los enteros comprendidos entre 1 y el número leído.
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
	printf("Ingrese un número entero positivo: "); scanf("%i", &n);
	if(n < 0){
		do{
			printf("Ingrese un número entero POSITIVO: "); scanf("%i", &n);
		}while(n < 0);
	}
	for(int i = 1; i <= n; i++){
		factorial(i);
	}
	return 0;
}
