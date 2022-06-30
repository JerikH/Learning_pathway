/*
Se pide hacer un programa tal que, dados dos n�meros enteros positivos, el primero debe ser mayor que
el segundo y ser� considerado como dividendo y el segundo como divisor, se devuelva el resultado de su
divisi�n entera. Condici�n: Use solo el operador de resta (-).
Sugerencia de function:
int division (int a, int b){
	if(b > a){
		return 0;
	}
	else{
		return division(a-b, b) + 1;
	}
}

	Jerik David Hincapie Bedoya
*/
#include <stdio.h>
#include <locale.h>

int division (int a, int b){
	if(b > a){
		return 0;
	}
	else if(b <= 0){
		return 0;
	}
	else if(a < 0){
		return 0;
	}
	else{
		return 1 - (- (division(a - b, b)));
	}
}

int main(){
	setlocale(LC_ALL, "Spanish");
	int a, b;
	printf("---- Este programa calcula la divisi�n entera de dos n�meros (divisi�n entre 0 no definida) ----\n");
	printf("Por favor ingrese el dividendo(debe ser mayor al divisor y a 0): ");scanf("%i", &a);
	printf("Por favor ingrese el divisor(debe ser menor al anterior y mayor a 0): ");scanf("%i", &b);
	printf("El resultado de operar %i / %i es: %i", a, b, division(a, b));
	return 0;
}
