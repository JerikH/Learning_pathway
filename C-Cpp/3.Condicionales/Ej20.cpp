/*
En la empresa transportadora "VIAJE SEGURO " se presentan muchos choques de
sus vehículos por lo que decidieron afiliarse a un seguro. Después de muchas
conversaciones con la aseguradora "TRANQUILO", llegaron a ciertos acuerdos:
Después de ver las estadísticas, se dieron cuenta que los choques cumplen ciertas
características similares por lo que los dividieron en tres clases:

1) El costo del arreglo es de hasta $500.
2) El costo del arreglo está entre $500 y $2000.
3) El costo es mayor de $2000.

Para cada clase se decidió lo siguiente:
Si es un choque del tipo 1, la empresa paga 410 y el resto lo debe pagar el conductor.
Si el choque es del tipo 2, la empresa paga 500, la aseguradora el 80% del saldo y el conductor el resto.
Y por último, si el choque es del tipo 3, la empresa debe pagar 100, la aseguradora el 75% del saldo y el conductor 
debe pagar lo que falta en cinco cuotas.

Hay que realizar el programa para que dado un costo del arreglo, decir cuánto debe
pagar la empresa, la aseguradora y el conductor.
Jerik David Hincapie Bedoya
*/
#include <stdio.h>
#include <locale.h>
#include <iostream>
using namespace std;

int main(){
	setlocale(LC_ALL, "Spanish");
	float cst, emp, asg, cnd;
	int cs;
	printf("Por favor ingrese el costo total de las reparaciones del vehículo: "); cin >> cst;
	if(cst > 0){
		if(cst <= 500){
			if(cst <= 410){
				emp = cst;
				asg = 0;
				cnd = 0;
				cs = 1;
			}
			else{
				emp = 410;
				asg = 0;
				cnd = (cst - 410);
				cs = 1;
			}
		}
		else if(cst <= 2000){
			emp = 500;
			asg = ((cst - 500) * 80)/100;
			cnd = (cst - (emp + asg));
			cs = 2;
		}
		else if(cst > 2000){
			emp = 100;
			asg = (((cst - 100) * 75)/100);
			cnd = (cst - (emp + asg));
			cs = 3;
		}
		else{
			printf("Costo fuera de rango");
		}
	}
	else{
		printf("El costo de las reparaciones es 0, nadie debe pagar.");
	}
	switch(cs){
		case 1: case 2:
			printf("La empresa debe pagar: %.2f\n", emp);
			printf("La aseguradora debe pagar: %.2f\n", asg);
			printf("El conductor debe pagar: %.2f", cnd);
		break;
		case 3:
			printf("La empresa debe pagar: %.2f\n", emp);
			printf("La aseguradora debe pagar: %.2f\n", asg);
			printf("El conductor debe pagar 5 coutas de: %.2f", (cnd / 5));
		break;
	}
	return 0;
}
