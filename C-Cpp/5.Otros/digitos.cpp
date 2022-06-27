/*
Programa que reciba un número entero y verifique si este es de 3 digitos, de ser así, verifique si alguno de ellos se repite
*/
#include <stdio.h>
#include <locale.h>

int main(){
	setlocale(LC_ALL, "Spanish");
	int n;
	printf("Por favor ingrese un número de 3 digitos: ");scanf("%i", &n);
	if (n > 99 && n < 1000){
		printf("El número es de 3 digitos");
	}
	else if(n < -99 && n > -1000){
		printf("El número es de 3 digitos");
	}
	else{
		printf("El número no es de tres digitos, inténtelo de nuevo.");
	}
}
