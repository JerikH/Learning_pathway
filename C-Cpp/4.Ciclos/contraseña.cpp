/*
Programa que empleando ciclos valide una contrase�a ingresada por el usuario.
Jerik David Hincapie Bedoya
*/
#include <stdio.h>
#include <iostream>
#include <locale.h>
using namespace std;
int main(){
	setlocale(LC_ALL, "Spanish");
	string pass;
	printf("Ingrese la contrase�a: "); cin >> pass;
	if((pass != "correcto")){
		do{
			printf("Contrase�a incorrecta, ingrese la contrase�a: "); cin >> pass;
		}while((pass != "correcto"));
	}
	printf("Contrase�a correcta!!");	
	return 0;
}
