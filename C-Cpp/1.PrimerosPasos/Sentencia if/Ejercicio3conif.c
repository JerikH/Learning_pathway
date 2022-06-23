//determinar si un número es par o impar  con sentencia if de una opción
#include <stdio.h>
int main(){
	int n;
	printf("Por favor digite el número entero a verificar: "); scanf("%i", &n);
	if (n % 2 == 0){
		printf("EL número %i es par", n);
	}
	if (n % 2 != 0){
		printf("El número %i es impar", n);
	}
	return 0;
}
