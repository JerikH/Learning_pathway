/*
De un estudiante se conoce los siguientes datos:
    - Código     - Nombre   - Nota 1   - Nota 2    - Nota 3 
    Calcular y mostrar su promedio
Realizado por: Jerik David Hincapie Bedoya
*/
#import <stdio.h>
#include <locale.h>
#include <iostream>
using namespace std;
int main(){
	setlocale (LC_CTYPE, "Spanish");
	char nom[60];
	int cod;
	float n1,n2,n3,prom;
	printf("Por favor ingrese el código identificador del estudiante: ");scanf("%i", &cod);
	printf("Por favor ingrese el nombre del estudiante: ");
	cin >> nom;
	printf("Por favor ingrese la nota 1 del estudiante: ");scanf("%f", &n1);
	printf("Por favor ingrese la nota 2 del estudiante: ");scanf("%f", &n2);
	printf("Por favor ingrese la nota 3 del estudiante: ");scanf("%f", &n3);
	prom = (n1 + n2 + n3)/3;
	printf("El promedio de las notas del estudiante es: %.3f",prom);
	return 0;
}
