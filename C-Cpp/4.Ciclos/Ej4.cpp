/*
4. Leer dos números y mostrar todos los enteros comprendidos entre ellos.
*/
#include <stdio.h>
#include <locale.h>
int main(){
	setlocale(LC_ALL, "Spanish");
	int n, i;
	printf("Ingrese un número entero: ");scanf("%i", &i);
	printf("Ingrese otro número entero: ");scanf("%i", &n);
	
	if(((n - i) > 1) || (n - i) < -1){
		for(i++; i < n; i++){
			printf("%i\n", i);
		}
	}
	else if(((i - n) > 1) || (i - n) < -1){
		for(i--; i > n; i--){
			printf("%i\n", i);
		}
	}
	else{
		printf(" ");
	}
	return 0;
}
