/*
Programa que reciba un n�mero entero y verifique si este es de 3 digitos, de ser as�, verifique si alguno de ellos se repite
*/
#include <stdio.h>
#include <locale.h>

int main(){
	setlocale(LC_ALL, "Spanish");
	int n;
	printf("Por favor ingrese un n�mero de 3 digitos: ");scanf("%i", &n);
	if (n > 99 && n < 1000){
		printf("El n�mero es de 3 digitos");
	}
	else if(n < -99 && n > -1000){
		printf("El n�mero es de 3 digitos");
	}
	else{
		printf("El n�mero no es de tres digitos, int�ntelo de nuevo.");
	}
}
