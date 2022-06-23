//La sentencia if
/*En C la sentencia if es de gran importancia y a diferencia de otros lenguajes no precisa de la opci�n positiva y negativa para ejecutarse
es posible declarar la condici�n if y solo resaltar el caso positivo as�:
	.
	.
	.
	if (condici�n){ // comienza la sentencia if
		Bloque de c�digo a ejecutar en caso de cumplirse la condici�n	
	 }//termina la sentencia if
	 //el c�digo principal puede continuar sin importar el resultado de la sentencia
	 . 
	 .
	 .
	 
*/
//ejemplo del uso de la sentencia if con �nica opci�n
//prueba de divisibilidad
#include <stdio.h>
int main(){
	int n1, n2;
	printf("Por favor ingrese dos n�meros separados por un espacio: ");scanf("%i %i", &n1, &n2);
	if (n1 % n2 == 0){
		printf("El n�mero %i si es divisible de forma exacta entre %i", n1, n2);
	}
	return 0;
}
//el c�digo anterior verifica si el n1 es divisible de forma exacta entre el n2, en caso de no serlo no hace nada y sale de la ejecuci�n
