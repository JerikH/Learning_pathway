//calcular el mayor de dos n�meros le�dos por el teclado, y mostrarlo en pantalla
#include <stdio.h>
int main(){
	float nu1, nu2;
	printf("Por favor ingrese los dos n�meros a revisar separados por espacios: "); scanf("%f %f", &nu1, &nu2);
	if(nu1 > nu2){
		printf("El n�mero %.2f es el mayor de los dos n�meros ingresados.", nu1);
	}
	else{
		if(nu2 > nu1){
			printf("El n�mero %.2f es el mayor de los dos n�meros ingresados.", nu2);	
		}
		else{
			printf("Los dos n�meros son iguales.");
		}
	}
	return 0;
}
