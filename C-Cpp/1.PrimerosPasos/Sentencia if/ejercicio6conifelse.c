//ingrese un número y muestre su raíz cuadrada en pantalla. si el número es negativo muéstrelo y diga que tiene raíz imaginaria
#include <stdio.h>
#include <math.h>
int main(){
	float n1;
	printf("Por favor ingrese el número al cual desea calcularle raíz cuadrada: "); scanf("%f", &n1);
	if(n1 >= 0){
		n1 = sqrt(n1);
		printf("La raíz cuadrada del número ingresado es: %.2f", n1);
	}
	else{
		printf("El número %.2f es negativo y por lo tanto tiene una raíz cuadrada que pertenece a los números imaginarios", n1);
	}
	return 0;
}
