/*Realice un programa, que lea de teclado un número real (n) comprendido entre 0 y 10. 
El programa debe  imprimir la nota asociada según el siguiente esquema:
  n = 10  		Matricula de Honor
  entre 9 y < 10  	Sobresaliente
  7 < n < 9  	Notable
  6 < n < 7  	Aprobado
  0 < n < 6  	Perdio
  En otro caso  Error
*/
#include <iostream>
#include <stdio.h>
#include <locale.h>
using namespace std;

int main(){
	setlocale(LC_ALL, "Spanish");
	float n;
	printf("Por favor ingrese la nota a verificar: ");cin >> n;
	if (n >= 0.0 && n <= 10.0){
		if (n == 10.0){
			printf("Matricula de honor");
		}
		else if(n >= 9.0 && n < 10.0){
			printf("Sobresaliente");
		}
		else if(n >= 7.0 && n < 9.0){
			printf("Notable");
		}
		else if(n >= 6.0 && n < 7.0){
			printf("Aprobado");
		}
		else if(n >= 0.0 && n < 6.0){
			printf("Perdió");	
		}
	}
	else{
		printf("Error, nota fuera de rango.");
	}
	return 0;
}
/*
#include <stdio.h>
#include <locale.h>

int main(){
	setlocale(LC_ALL, "Spanish");
	float n;
	printf("Por favor ingrese la nota a verificar: ");scanf("%f", &n);
	if (!(n >= 0.0 && n <= 10.0)){
		printf("Error, nota fuera de rango.");
	}
	else if (n == 10.0){
		printf("Matricula de honor");
	}
	else if(n >= 9.0 && n < 10.0){
		printf("Sobresaliente");
	}
	else if(n >= 7.0 && n < 9.0){
		printf("Notable");
	}
	else if(n >= 6.0 && n < 7.0){
		printf("Aprobado");
	}
	else if(n >= 0.0 && n < 6.0){
		printf("Perdió");	
	}
}
*/
