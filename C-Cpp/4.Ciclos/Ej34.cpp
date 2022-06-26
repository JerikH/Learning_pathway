/*
34. Generar los números del 1 al 10 utilizando un ciclo que vaya de 10 a 1.
*/
#include <stdio.h>
#include <locale.h>
int main(){
	setlocale(LC_ALL, "Spanish");
	int i = 10;
	for (i; (i <= 10 && i >= 1); i--){
		printf("%i\n", (11 - i));
	}
	return 0;
}
