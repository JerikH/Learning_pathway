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
	printf("Por favor ingrese un n�mero entero: ");scanf("%i", &n);
	//a)
	printf((n > 0) ? "su n�mero es positivo" : (n < 0) ? "su n�mero es negativo" : "su n�mero es cero");
	//b)
	printf(((n % 2) == 0) ? "\nSu n�mero es par" : "\nSu n�mero es impar");
	return 0;
}
