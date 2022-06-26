/*
14. Mostrar en pantalla los primeros 20 múltiplos de 3
*/
#include <stdio.h>
#include <locale.h>
int main(){
	int n;
	for(int i = 0; i < 20; i++){
		printf("%i\n", (i * 3));
	}
	return 0;
}
