//calcular la longitud de la circunferencia.
#include <stdio.h>

int main(){
	float rad, circ, pi = 3.1415926535;
	printf("Por favor ingrese el valor del r�dio de la circunferencia: ");
	scanf("%f", &rad);
	circ = rad * 2 * pi;
	printf("La longitud del di�metro de la circunferencia es: %f", circ);
}
