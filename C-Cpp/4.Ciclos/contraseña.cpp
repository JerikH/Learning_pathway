/*
Programa que empleando ciclos valide una contraseņa ingresada por el usuario.
Jerik David Hincapie Bedoya
*/
#include <stdio.h>
#include <iostream>
#include <locale.h>
using namespace std;
int main(){
	setlocale(LC_ALL, "Spanish");
	string pass;
	printf("Ingrese la contraseņa: "); cin >> pass;
	if((pass != "correcto")){
		do{
			printf("Contraseņa incorrecta, ingrese la contraseņa: "); cin >> pass;
		}while((pass != "correcto"));
	}
	printf("Contraseņa correcta!!");	
	return 0;
}
