#include <stdio.h>
#include <stdlib.h>

/*
El operador de asignación es el igual =
una variable puede estar definida y posteriormente igualarla (asignarle) otro valor empleando el operador, así
	int a;
	a = 10;
pero también es posible igual una variable a otra así
	int a, b, c;
	a = b = c = 10//ahora las tres variables enteras tienen el valor de 10

Abreviaturas
es posible abreviar operaciones sobre una variable que impliquen a la misma variable
por ejemplo:
	a = a + 10;
En el ejemplo se le está asignando a la variable a, la suma de sí misma con 10
y esto se puede abreviar de la siguiente forma y aplica para todos los operadores básicos, así
	a += 10; // a = a + 10;
	a -= 10; // a = a - 10;
	a *= 10; // a = a * 10;
	a /= 10; // a = a / 10;
*/
int main(){
	int a;
	a = 10;
	printf("El valor de a es: %i\n", a);
	int b,c,d;
	b = c = d = 25;
	printf("El valor de b es: %i\nel de c es: %i\nel de d es: %i\n", b,c,d);
	//asignación de variables operadas y abreviaturas
	int e,f;
	e = f = 10;
	e += 10; // otra forma correcta de escribir esto es:  e = e + 10;
	f -= 5; // otra forma correcta de escribir esto es:  f = f - 5;
	printf("El valor de e es: %i\n", e);
	printf("El valor de F es: %i\n", f);
	return 0;
}
