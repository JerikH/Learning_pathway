//comprobar si un número es positivo o negativo con if de una opción
#include <stdio.h>
int main(){
	float n;
	printf("Por favor entre un número a revisar: "); scanf("%f", &n);
	if(n > 0){
		printf("El número %.2f es positivo", n);
	}
	if(n < 0){
		printf("El número %.2f es negativo", n);
	}
	if(n == 0){
		printf("El número es 0");
	}
	return 0;
}
