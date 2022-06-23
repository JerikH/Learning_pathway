//calcular el mayor de dos números leídos por el teclado, y mostrarlo en pantalla
#include <stdio.h>
int main(){
	float nu1, nu2;
	printf("Por favor ingrese los dos números a revisar separados por espacios: "); scanf("%f %f", &nu1, &nu2);
	if(nu1 > nu2){
		printf("El número %.2f es el mayor de los dos números ingresados.", nu1);
	}
	else{
		if(nu2 > nu1){
			printf("El número %.2f es el mayor de los dos números ingresados.", nu2);	
		}
		else{
			printf("Los dos números son iguales.");
		}
	}
	return 0;
}
