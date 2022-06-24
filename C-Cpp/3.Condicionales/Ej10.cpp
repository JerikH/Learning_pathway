/*
Validar que dada una fecha, esta sea correcta. Para que una fecha sea correcta es
necesario:
- El año debe ser mayor que cero.
- El mes debe estar entre 1 y 12.
- Dependiendo del mes que sea, el dia debe estar dentro de los limites validos.
Jerik David Hincapie Bedoya
*/
#include <stdio.h>
#include <locale.h>
#include <iostream>
using namespace std;

int dia(int dia, int mes, int year){
	int dias;
	switch (mes){
		case 01: case 03: case 05: case 07: case 8: case 10: case 12:
		dias = 31;
		break;
		case 04: case 06: case 9: case 11:
		dias = 30;
		break;
		case 02:
		if(year % 4 == 0){
			dias = 29;
		}
		else{
			dias = 28;	
		}
		break;
	}
	if(dia > 0 && dia <= dias){
		return 1;
	}
	else{
		return 0;
	}
}

int main(){
	setlocale(LC_ALL, "Spanish");
	int Y, M, D;
	printf("Por favor ingrese el año AAAA: "); cin >> Y;
	printf("Por favor ingrese el mes MM: "); cin >> M;
	printf("Por favor ingrese el día DD: "); cin >> D;
	printf ("La fecha ingresada (%i/%i/%i) ", D, M, Y);
	if(Y > 0){
		if(M > 0 && M <= 12){
			if(dia(D, M, Y) == 1){
				printf("Es una fecha válida");
			}
			else{
				printf("No es una fecha válida");
			}
		}
		else{
			printf("No es una fecha válida");
		}
	}
	else{
		printf("No es una fecha válida");
	}
	return 0;
}
