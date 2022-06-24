/*Calcular y mostrar la suma, resta, multiplicación, división, potencia de dos números
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
	printf("La suma de los dos números (%.2f + %.2f) es: %.2f\n",n1,n2,(n1 + n2));
	printf("La resta de los dos números (%.2f - %.2f) es: %.2f\n",n1,n2,(n1 - n2));
	printf("La multiplicación de los dos números (%.2f * %.2f) es: %.2f\n",n1,n2,(n1 * n2));
	printf("La división de los dos números (%.2f / %.2f) es: %.2f\n",n1,n2,(n1 / n2));
	printf("La potencia de los dos números (%.2f ^ %.2f) es: %.2f",n1,n2,pow(n1, n2));
	return 0;
}
