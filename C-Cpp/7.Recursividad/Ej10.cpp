/*
10 - Se pide hacer un programa tal que, dados dos números enteros positivos, se devuelva el resultado de
su suma. Sin usar el operador suma con los dos valores ingresados por teclado.
	Jerik David Hincapie Bedoya
*/
#include <stdio.h>
#include <locale.h>
#include <math.h>
#include <stdlib.h>

int suma(int a, int b){
	if(a < b){
		return 1 + suma(a, (b - 1));
	}
	else if(a == 0 && b == 0){
		return 0;
	}
	else if(b <= a){
		return 1 + suma((a - 1), b);
	}
}

int main(){
	setlocale(LC_ALL, "Spanish");
	int n1, n2;
	printf("---Programa que calcula la suma de dos números enteros positivos---\n");
	printf("Ingrese el primer número a sumar: "); scanf("%i", &n1);
	printf("Ingrese el segundo número a sumar: "); scanf("%i", &n2);
	printf("La suma es: %i", suma(n1, n2));
	return 0;
}
