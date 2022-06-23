//escribir un programa que calcule el área de un trapecio
#include <stdio.h>

int main(){
	float bm, b, h, ar;
	printf("Por favor ingrese el valor de la Base mayor del trapecio: ");
	scanf("%f", &bm);
	printf("Por favor ingrese el valor de la Base menor del trapecio: ");
	scanf("%f", &b);
	printf("Por favor ingrese el valor de la altura del trapecio: ");
	scanf("%f", &h);
	ar = ((bm + b) * h)/2;
	printf("El valor del área del trapecio indicado es: %.3f", ar);
	return 0;
}
