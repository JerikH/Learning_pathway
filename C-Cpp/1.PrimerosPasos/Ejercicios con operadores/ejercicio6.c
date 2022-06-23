//calcular la media aritmética de 3 números dados por el usuario
#include <stdio.h>

int main(){
	float nu1, nu2, nu3, med;
	printf("Por favor ingrese el primer número: "); scanf("%f", &nu1);
	printf("Por favor ingrese el segundo número: "); scanf("%f", &nu2);
	printf("Por favor ingrese el tercer número: "); scanf("%f", &nu3);
	med = (nu1 + nu2 + nu3) / 3;
	printf("La media aritmética de los números ingresados es: %.2f", med);
	return 0;
}
