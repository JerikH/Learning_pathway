/*Calcular y mostrar la suma, resta, multiplicaci�n, divisi�n, potencia de dos n�meros
Realizado por: Jerik David Hincapie Bedoya
*/
#import <stdio.h>
#import <math.h>
#include <locale.h>
int main(){
	setlocale (LC_CTYPE, "Spanish");
	float n1, n2;
	printf("Por favor ingrese el primer valor: "); scanf("%f", &n1);
	printf("Por favor ingrese el segundo valor: "); scanf("%f", &n2);
	printf("La suma de los dos n�meros (%.2f + %.2f) es: %.2f\n",n1,n2,(n1 + n2));
	printf("La resta de los dos n�meros (%.2f - %.2f) es: %.2f\n",n1,n2,(n1 - n2));
	printf("La multiplicaci�n de los dos n�meros (%.2f * %.2f) es: %.2f\n",n1,n2,(n1 * n2));
	printf("La divisi�n de los dos n�meros (%.2f / %.2f) es: %.2f\n",n1,n2,(n1 / n2));
	printf("La potencia de los dos n�meros (%.2f ^ %.2f) es: %.2f",n1,n2,pow(n1, n2));
	return 0;
}
