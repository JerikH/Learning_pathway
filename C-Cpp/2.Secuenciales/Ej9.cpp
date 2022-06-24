/*
Convertir a pesos Colombianos y a Dólares un valor dado en Euros
Realizado por: Jerik David Hincapie Bedoya
*/
#import <stdio.h>
#include <locale.h>
#include <iostream>
using namespace std;
int main(){
	setlocale (LC_CTYPE, "Spanish");
	float cop, usd, eur, Ccop = 4494.66, Cusd = 1.18;
	printf("Por favor ingrese la cantidad en Euros para convertir a COP y a USD: ");scanf("%f", &eur);
	printf("\nLa tasa de conversión aplicada para los dólares es: 1 eur --> %.2f usd", Cusd);
	printf("\nLa tasa de conversión aplicada para los pesos colombianos es: 1eur --> %.2f cop", Ccop);
	usd = eur * Cusd;
	cop = eur * Ccop;
	printf("\n%.2f euros son equivalentes a %.2f dólares",eur,usd);
	printf("\n%.2f euros son equivalentes a %.2f pesos colombianos",eur,cop);
	return 0;
}
