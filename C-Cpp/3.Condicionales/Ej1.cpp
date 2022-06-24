/*Lea un entero y diga:
a)Si es positivo, negativo o cero.
b)Si es par o impar.
Jerik David Hincapie Bedoya
*/
#include <stdio.h>
#include <locale.h>

int main(){
	setlocale(LC_ALL, "Spanish");
	int n;
	printf("Por favor ingrese un número entero: ");scanf("%i", &n);
	//a)
	printf((n > 0) ? "su número es positivo" : (n < 0) ? "su número es negativo" : "su número es cero");
	//b)
	printf(((n % 2) == 0) ? "\nSu número es par" : "\nSu número es impar");
	return 0;
}
