//calcular la media aritm�tica de 3 n�meros dados por el usuario
#include <stdio.h>

int main(){
	float nu1, nu2, nu3, med;
	printf("Por favor ingrese el primer n�mero: "); scanf("%f", &nu1);
	printf("Por favor ingrese el segundo n�mero: "); scanf("%f", &nu2);
	printf("Por favor ingrese el tercer n�mero: "); scanf("%f", &nu3);
	med = (nu1 + nu2 + nu3) / 3;
	printf("La media aritm�tica de los n�meros ingresados es: %.2f", med);
	return 0;
}
