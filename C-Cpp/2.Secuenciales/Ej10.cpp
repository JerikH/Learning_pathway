/*
El pago de un curso académico exige una cuota inicial del 20% y el otro 80% del dinero puede ser dividido en coutas mensuales.
dado el valor del curso y la cantidad de cuotas en las que se desea dividir el pago, indique:
					valor del pago inicial
					cantidad de cuotas -- valor de cada couta
Realizado por: Jerik David Hincapie Bedoya
*/
#import <stdio.h>
#include <locale.h>
#include <iostream>
using namespace std;
int main(){
	setlocale (LC_CTYPE, "Spanish");
	float t,ini,cot,Ccot;
	printf("Por favor ingrese el valor total del curso: ");scanf("%f", &t);
	printf("Por favor ingrese la cantidad de cuotas mensuales en las que desea dividir el pago del 80%% del curso: ");scanf("%f", &Ccot);
	ini = (t * 20)/100;
	t -= ini;
	cot = t / Ccot;
	printf("\nEl pago inicial del curso debe ser de: %.2f", ini);
	printf("\nEl 80%% restante del curso será dividido en %.0f coutas mensuales y cada cuota tendrá un valor de: %.2f", Ccot, cot);
	return 0;
}
