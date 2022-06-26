/*
Programa que empleando ciclos imprima las primeras 10 tablas de multiplicar (1 - 10)
Jerik David Hincapie Bedoya
*/
#include <stdio.h>
int main(){
	int n = 1;
	while(n < 11){
		printf("Tabla del %i\n", n);
		for(int i = 1; i <= 10; i++){
			printf("%i x %i = %i\n", n, i, (n*i));
		}
		printf("\n");
		n++;
	}
	return 0;
}
