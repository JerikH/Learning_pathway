// convertir grados celsius a grados fahrenheit
#include <stdio.h>

int main(){
	float C, F;
	printf("Por favor ingrese los grados celsius que desea convertir a fahrenheit: ");
	scanf("%f", &C);
	F = C * 9/5 + 32;
	printf("%.2f celsius equivale a %f fahrenheit", C, F);
	return 0;
}
