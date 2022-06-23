//ingrese un n�mero y muestre su ra�z cuadrada en pantalla. si el n�mero es negativo mu�strelo y diga que tiene ra�z imaginaria
#include <stdio.h>
#include <math.h>
int main(){
	float n1;
	printf("Por favor ingrese el n�mero al cual desea calcularle ra�z cuadrada: "); scanf("%f", &n1);
	if(n1 >= 0){
		n1 = sqrt(n1);
		printf("La ra�z cuadrada del n�mero ingresado es: %.2f", n1);
	}
	else{
		printf("El n�mero %.2f es negativo y por lo tanto tiene una ra�z cuadrada que pertenece a los n�meros imaginarios", n1);
	}
	return 0;
}
