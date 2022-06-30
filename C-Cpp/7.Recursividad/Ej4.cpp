/*
Se pide hacer un programa tal que, dados dos números enteros positivos, el primero debe ser mayor que
el segundo y será considerado como dividendo y el segundo como divisor, se devuelva el resultado de su
división entera. Condición: Use solo el operador de resta (-).
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
	printf("---- Este programa calcula la división entera de dos números (división entre 0 no definida) ----\n");
	printf("Por favor ingrese el dividendo(debe ser mayor al divisor y a 0): ");scanf("%i", &a);
	printf("Por favor ingrese el divisor(debe ser menor al anterior y mayor a 0): ");scanf("%i", &b);
	printf("El resultado de operar %i / %i es: %i", a, b, division(a, b));
	return 0;
}
