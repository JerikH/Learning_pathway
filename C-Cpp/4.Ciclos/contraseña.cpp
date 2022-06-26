/*
Programa que empleando ciclos valide una contraseña ingresada por el usuario.
Jerik David Hincapie Bedoya
*/
#include <stdio.h>
#include <iostream>
#include <locale.h>
using namespace std;
int main(){
	setlocale(LC_ALL, "Spanish");
	string pass;
	printf("Ingrese la contraseña: "); cin >> pass;
	if((pass != "correcto")){
		do{
			printf("Contraseña incorrecta, ingrese la contraseña: "); cin >> pass;
		}while((pass != "correcto"));
	}
	printf("Contraseña correcta!!");	
	return 0;
}
