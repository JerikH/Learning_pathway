//Ejercicio con if de dos opciones, nota del estudiante

#include <stdio.h>

int main(){
	float nota;
	printf("Por favor digite la nota del estudiante: "); scanf("%f", &nota);
	if(nota > 10.5){
		printf("El alumno aprobó con nota de: %.2f", nota);
	}
	else{
		printf("El alumno desaprobó la asignatura.");
	}
	return 0;
}
