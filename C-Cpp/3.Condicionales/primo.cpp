/*
Dado un número entero indique:
	- Si es par / impar
	- Si es primo
	- Si es positivo / negativo
Jerik David Hincapie Bedoya
*/
#include <stdio.h>
#include <locale.h>
bool esPrimo(int numero) {
	if(numero >= 0){
	 	if (numero == 0 || numero == 1 || numero == 4){
  		return false;
  		}
  		for (int x = 2; x < (numero / 2); x++){
    		if ((numero % x) == 0){
    			return false;
			}
  		}
  	return true;	
	}
	else{
		return false;
	}
}

int main(){
	setlocale(LC_ALL, "Spanish");
	int n;
	printf("Ingrese un número entero: "); scanf("%i", &n);
	if((n % 2) == 0){
		printf("El número ingresado es par.\n");
	}
	else{
		printf("El número ingresado es impar.\n");
	}
	printf((esPrimo(n) ? "El número ingresado es primo.\n" : "El número ingresado no es primo.\n"));
	if(n > 0){
		printf("El número ingresado es positivo\n");
	}
	else if(n == 0){
		printf("El número ingresado es 0 (sin signo)\n");
	}
	else{
		printf("El número ingresado es negativo\n");
	}
	return 0;
}
