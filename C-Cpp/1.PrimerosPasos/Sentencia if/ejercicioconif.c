// comprobar si un alumno aprob� usando la sentencia if, este aprueba si la nota es mayor a 10.5
#include <stdio.h>

int main(){
	float nota;
	printf("Digite la nota del alumno: "); scanf("%f", &nota);
	if(nota > 10.5){
		printf("El alumno aprob� con la nota: %.2f", nota);
	}
	return 0;
}
