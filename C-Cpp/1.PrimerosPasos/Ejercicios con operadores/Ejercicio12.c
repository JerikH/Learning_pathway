//calcular la media geométrica de tres números
#include <stdio.h>
#include <math.h>
int main(){
	float nu1, nu2, nu3, total;
	printf("Por favor ingrese los tres números separados por espacios: ");
	scanf("%f %f %f", &nu1, &nu2, &nu3);
	total = pow((nu1 * nu2 * nu3), (double)1/3);
	printf("La media geométrica de los números ingresados es: %.2f", total);
	return 0;
}
