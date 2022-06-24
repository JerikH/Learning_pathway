/*
De un artículo se conoce: 
     - referencia 
     - Nombre del artículo
     - valor unitario 
     - unidades disponibles
     Se pide calcular el valor total del articulo (con IVA incluido)
Realizado por: Jerik David Hincapie Bedoya
*/
#import <stdio.h>
#include <locale.h>
#include <iostream>
using namespace std;
int main(){
	setlocale (LC_CTYPE, "Spanish");
	char ref[30], nom[40];
	float val,valf;
	int disp;
	printf("Por favor digite la referencia del artículo: ");
	cin >> ref;
	printf("Por favor digite el nombre del artículo: ");
	cin >> nom;
	printf("Por favor ingrese el valor unitario del artículo: ");scanf("%f", &val);
	printf("Por favor ingrese la cantidad de unidades disponibles del artículo: ");scanf("%i", &disp);
	valf = val + ((19 * val) / 100);
	printf("El valor del artículo con IVA(19%%) incluido es: %.2f", valf);
	return 0;
}
