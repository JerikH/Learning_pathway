//calcular la hipotenusa de un tri�ngulo rect�ngulo pidiendo sus catetos al usuario
#include <stdio.h>
#include <math.h>

int main(){
	float hip, cat1, cat2;
	printf("Por favor digite el valor del primer cateto: ");
	scanf("%f", &cat1);
	printf("Por favor digite el valor del segundo cateto: ");
	scanf("%f", &cat2);
	hip = sqrt(pow(cat1, 2) + pow(cat2, 2));
	printf("La hipotenusa del tri�ngulo rect�ngulo es: %.2f", hip);
	return 0;
}
