/*
44. Leer un número y calcularle su factorial.
*/
#include <stdio.h>
#include <locale.h>
#include <iostream>
using namespace std;
int main(){
	setlocale(LC_ALL, "Spanish");
	int n;
	long double l = 1;
	printf("Ingrese un número entero positivo: "); scanf("%i", &n);
	if(n < 0){
		do{
			printf("Ingrese un número entero POSITIVO: "); scanf("%i", &n);
		}while(n < 0);
	}
	for(int i = 1; i <= n; i++){
		l *= i;
	}
	cout << "Factorial de " << n << " -> " << l << endl;
	return 0;
}
