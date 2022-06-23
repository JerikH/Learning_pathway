//calcular la longitud de la circunferencia.
#include <stdio.h>

int main(){
	float rad, circ, pi = 3.1415926535;
	printf("Por favor ingrese el valor del rádio de la circunferencia: ");
	scanf("%f", &rad);
	circ = rad * 2 * pi;
	printf("La longitud del diámetro de la circunferencia es: %f", circ);
}
