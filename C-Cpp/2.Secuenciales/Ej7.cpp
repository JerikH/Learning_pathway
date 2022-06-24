/*
Se pide liquidar el valor de horas extras diurnas teniendo en cuenta lo siguiente
    - Valor de la hora trabajada  
    - Número de horas trabajadas durante el mes
    Debe tener en cuenta que las horas extras diurnas tienen un recargo del 35% 
    del valor de la hora trabajada 
Realizado por: Jerik David Hincapie Bedoya
*/
#import <stdio.h>
#include <locale.h>
#include <iostream>
using namespace std;
int main(){
	setlocale (LC_CTYPE, "Spanish");
	float val,cant,extra;
	printf("Por favor ingrese el valor base de la hora trabajada: ");scanf("%f", &val);
	printf("Por favor ingrese la cantidad de horas extras diurnas trabajadas durante el mes: ");scanf("%f", &cant);
	extra = (val * 35)/100;
	val += extra;
	printf("\nEl dinero a pagar al empleado por las horas extras diurnas trabajadas es de: %f", (val * cant));
	return 0;
}
