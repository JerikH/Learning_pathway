/*
Programa que calcule la hipotenusa de un triángulo rectángulo conociendo sus catetos
Jerik David Hincapie Bedoya
*/
#include <stdio.h>
#include <math.h>
#include <iostream>
#include <locale.h>
using namespace std;
int main(){
	setlocale(LC_ALL, "Spanish");
	float c1,c2;
	double h;
	printf("....Programa que calcula la hipotenusa de un triángulo rectángulo....\n");
	printf("Ingrese un valor para cateto 1: "); cin >> c1;
	printf("Ingrese un valor para cateto 2: "); cin >> c2;
	h = sqrt(c1*c1 + c2*c2);
	printf("La hipotenusa mide: %.3f", h);
	return 0;
}
