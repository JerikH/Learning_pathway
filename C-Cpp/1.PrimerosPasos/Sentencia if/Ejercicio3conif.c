//determinar si un n�mero es par o impar  con sentencia if de una opci�n
#include <stdio.h>
int main(){
	int n;
	printf("Por favor digite el n�mero entero a verificar: "); scanf("%i", &n);
	if (n % 2 == 0){
		printf("EL n�mero %i es par", n);
	}
	if (n % 2 != 0){
		printf("El n�mero %i es impar", n);
	}
	return 0;
}
