/*
De un art�culo se conoce: 
     - referencia 
     - Nombre del art�culo
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
	printf("Por favor digite la referencia del art�culo: ");
	cin >> ref;
	printf("Por favor digite el nombre del art�culo: ");
	cin >> nom;
	printf("Por favor ingrese el valor unitario del art�culo: ");scanf("%f", &val);
	printf("Por favor ingrese la cantidad de unidades disponibles del art�culo: ");scanf("%i", &disp);
	valf = val + ((19 * val) / 100);
	printf("El valor del art�culo con IVA(19%%) incluido es: %.2f", valf);
	return 0;
}
