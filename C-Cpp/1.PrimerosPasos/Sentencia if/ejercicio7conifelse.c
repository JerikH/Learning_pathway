//solicitar el nombre del usuario y su signo zodiacal, en caso de ser signo Aries imprima el nombre, en caso contrario diga que no es aries
#include <stdio.h>
int main(){
	char nombre[30], signo[20];
	printf("Por favor ingrese su nombre"); gets(nombre);
	printf("Por favor ingrese su signo zodiacal"); scanf("%c", signo);
	if(signo = "Aries"){
		printf("%c", nombre);
	}
	else{
		printf("No es signo Aries");
	}
	return 0;
}
