//La sentencia if
/*En C la sentencia if es de gran importancia y a diferencia de otros lenguajes no precisa de la opción positiva y negativa para ejecutarse
es posible declarar la condición if y solo resaltar el caso positivo así:
	.
	.
	.
	if (condición){ // comienza la sentencia if
		Bloque de código a ejecutar en caso de cumplirse la condición	
	 }//termina la sentencia if
	 //el código principal puede continuar sin importar el resultado de la sentencia
	 . 
	 .
	 .
	 
*/
//ejemplo del uso de la sentencia if con única opción
//prueba de divisibilidad
#include <stdio.h>
int main(){
	int n1, n2;
	printf("Por favor ingrese dos números separados por un espacio: ");scanf("%i %i", &n1, &n2);
	if (n1 % n2 == 0){
		printf("El número %i si es divisible de forma exacta entre %i", n1, n2);
	}
	return 0;
}
//el código anterior verifica si el n1 es divisible de forma exacta entre el n2, en caso de no serlo no hace nada y sale de la ejecución
