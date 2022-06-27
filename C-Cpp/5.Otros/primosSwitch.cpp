#include <stdio.h>
#include <iostream>
#include <string>
#include <locale.h>
using namespace std;

int main(){
	setlocale(LC_ALL, "Spanish");
	int n1, n2;
	printf("Por favor ingrese un número positivo de dos digitos: ");scanf("%i", &n1);
	n1 = n1/10;
	n2 = n1 % 10;//aquí se obtiene el segundo digito del número
	switch (n1){
		case 1:
		case 2:
		case 3:
		case 5:
		case 7:
			printf("\nEl primer digito del número ingresado es primo\n%i", n1);
		break;
		default:
			printf("\nEl primer digito del número ingresado no es primo \no no se cumplió la condición de ingresar un número de dos digitos positivo\n%i", n1);
	}
	switch (n2){
		case 1:
		case 2:
		case 3:
		case 5:
		case 7:
			printf("\nEl segundo digito del número ingresado es primo\n%i", n2);
		break;
		default:
			printf("\nEl segundo digito del número ingresado no es primo \no no se cumplió la condición de ingresar un número de dos digitos positivo\n%i", n2);
	}
return 0;
}
