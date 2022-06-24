/*
Dado los valores A, B, C se pide calcular y mostrar estos resultados
- El cuadrado de la suma                
- El producto de los valores leídos
- El cubo del Producto
- La diferencia entre el cuadrado de la suma con respecto al cubo del  producto
Realizado por: Jerik David Hincapie Bedoya
*/
#import <stdio.h>
#import <math.h>
#include <locale.h>
int main(){
	setlocale (LC_CTYPE, "Spanish");
	float A,B,C,Csum,Pr,Cpr;
	printf("Por favor ingrese el valor A: ");scanf("%f", &A);
	printf("Por favor ingrese el valor B: ");scanf("%f", &B);
	printf("Por favor ingrese el valor C: ");scanf("%f", &C);
	Csum = pow((A + B + C),2);
	Pr = A * B * C;
	Cpr = pow(Pr, 3);
	printf("\nEl cuadrado de la suma es: %.2f", Csum);
	printf("\nEl producto de los valores es: %.2f", Pr);
	printf("\nEl cubo del producto es: %.2f", Cpr);
	printf("\nLa diferencia entre el cuadrado de la suma con respecto al cubo del producto es: %.2f", (Csum - Cpr));
	return 0;
}
