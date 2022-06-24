/*
De un trabajador se conoce su nombre, cargo, sueldo básico mensual 
se pide calcular y  mostrar el aporte a SALUD, pensión y el neto a pagar.
                salud -> 4%	     Pensión -> 3.375% 
Realizado por: Jerik David Hincapie Bedoya
*/
#import <stdio.h>
#include <locale.h>
#include <iostream>
using namespace std;
int main(){
	setlocale (LC_CTYPE, "Spanish");
	char nom[60], cargo[60];
	float sueldo, salud, pen, t;
	printf("Por favor ingrese el nombre del trabajador: ");
	cin >> nom;
	printf("Por favor ingrese el cargo del trabajador: ");
	cin >> cargo;
	printf("Por favor ingrese el sueldo básico mensual del trabajador: ");scanf("%f", &sueldo);
	salud = (sueldo * 4)/100;
	pen = (sueldo * 3.375)/100;
	t = sueldo - (salud + pen);
	printf("\nEl aporte a la salud es de: %.3f", salud);
	printf("\nEl aporte a la pensión es de: %.3f", pen);
	printf("\nEl neto a pagarle al empleado es de: %.3f", t);
	return 0;
}
