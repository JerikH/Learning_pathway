//comprobar si un n�mero es positivo o negativo con if de una opci�n
#include <stdio.h>
int main(){
	float n;
	printf("Por favor entre un n�mero a revisar: "); scanf("%f", &n);
	if(n > 0){
		printf("El n�mero %.2f es positivo", n);
	}
	if(n < 0){
		printf("El n�mero %.2f es negativo", n);
	}
	if(n == 0){
		printf("El n�mero es 0");
	}
	return 0;
}
