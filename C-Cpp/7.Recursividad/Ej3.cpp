/*
Se pide hacer un programa tal que, dados dos n�meros enteros positivos, se devuelva el resultado de su multiplicaci�n. 
		Condici�n: Use solo el operador de suma (+).
		
		Jerik David Hincapie Bedoya
*/
#include <stdio.h>
#include <locale.h>

int mul(int n1, int n2){
	if(n2 == 1){
		return n1;
	}
	else{
		return n1 + mul(n1, (n2 - 1));
	}
}

int main(){
	setlocale(LC_ALL, "Spanish");
	int n1, n2;
	printf("Ingrese el primer n�mero: ");scanf("%i", &n1);
	printf("Ingrese el segundo n�mero positivo: ");scanf("%i", &n2);
	if(n2 <= 0){
		printf("El resultado de operar %i x %i es: 0", n1, n2);
	}
	else{
		printf("El resultado de operar %i x %i es: %i", n1, n2, mul(n1, n2));
	}
	return 0;
}
