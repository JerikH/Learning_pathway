// solicitarle dos n�meros al usuario, sumarlos, restarlos, m�iltiplicarlos y dividirlos, mostrar los resultados por pantalla.
#include <stdio.h>

int main(){
	float n1, n2, resultado;
	printf("Por favor ingrese el primer valor a operar: ");
	scanf("%f", &n1);
	printf("Por favor ingrese el segundo valor a operar: ");
	scanf("%f", &n2);
	resultado = n1 + n2;
	printf("La suma de los valores es: %.1f\n", resultado);
	resultado = n1 - n2;
	printf("La resta de los valores es: %.1f\n", resultado);
	resultado = n1 * n2;
	printf("La multiplicaci�n de los valores es: %.1f\n", resultado);
	resultado = n1 / n2;
	printf("La divisio�n de los valores es: %.1f\n", resultado);
	return 0;
}
