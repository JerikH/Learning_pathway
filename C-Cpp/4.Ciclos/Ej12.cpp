/*
12. Leer un n�mero entero de dos d�gitos y mostrar en pantalla todos los enteros comprendidos entre un d�gito y otro.
*/
#include <stdio.h>
#include <locale.h>
int main(){
	setlocale(LC_ALL, "Spanish");
	int n, i, l;
	printf("Ingrese un n�mero entero de dos digitos: ");scanf("%i", &l);
	if(!((l > 9 && l < 100) || (l < -9 && l > -100))){
		do{
			printf("Ingrese un n�mero entero de DOS digitos: ");scanf("%i", &l);
		}while(!((l > 9 && l < 100) || (l < -9 && l > -100)));
	}
	i = l / 10;
	n = l % 10;
	if((n - i) > 1){
		for(i++; i < n; i++){
			printf("%i\n", i);
		}
	}
	else if((i - n) > 1){
		for(i--; i > n; i--){
			printf("%i\n", i);
		}
	}
	else{
		printf(" ");
	}
	return 0;
}
