/*
Hacer un programa en C++ que ayude a una empresa a incrementar los salarios de los trabajadores de la siguiente manera:
Tipo de salario 	%
De 0 a $9000 		20%
De $9001 a $15000 	10%
De $15001 a $20000	 5%
Más de $20001 	3%
*/
#include <stdio.h>
#include <iostream>
#include <locale.h>
using namespace std;

int main(){
	int sal, incr;
	setlocale(LC_ALL, "Spanish");
	printf("Por favor ingrese su salario y el sistema le asignará su incremento correspondiente: "); cin >> sal;
	switch (sal){
		case 0...9000:
			incr = ((20*sal)/100)+sal;
			break;
		case 9001...15000:
			incr = ((10*sal)/100)+sal;
			break;
		case 15001...20000:
			incr = ((5*sal)/100)+sal;
			break;
		case sal>20001:
			incr = ((3*sal)/100)+sal;
			break;
	}
	printf("Su nuevo salario es: %f", sal);
	return 0;
}
