/*
Ingresar por teclado dos valores enteros. 
Seguidamente solicitar el ingreso de un caracter '+','-','*' o '/'. 
Dependiendo del operador ingresado sumar, restar, multiplicar o dividir los valores ingresados. 
Si no se ingresa un operador válido no hacer nada.
*/
#include <stdio.h>
#include <iostream>
#include <locale.h>
using namespace std;

int main(){
	setlocale(LC_ALL, "Spanish");
	int n1, n2;
	char carac;
	printf("Por favor ingrese el primer número entero: ");scanf("%i", &n1);
	printf("Por favor ingrese el segundo número entero: ");scanf("%i", &n2);
	printf("Por favor ingrese el operador que desea aplicar (+ ; - ; * ; /): "); cin >> carac;
	switch (carac){
		case '+':
			printf("El resultado es: %i", (n1 + n2));
		break;
		case '-':
			printf("El resultado es: %i", (n1 - n2));
		break;
		case '*':
			printf("El resultado es: %i", (n1 * n2));
		break;	
		case '/':
			if(n2 != 0){
				printf("El resultado es: %i", (n1 / n2));	
			}
			else {
				printf("No es posible realizar la operación.");
			}
		break;
	}
	return 0;
}
