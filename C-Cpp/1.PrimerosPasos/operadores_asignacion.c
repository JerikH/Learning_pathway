#include <stdio.h>
#include <stdlib.h>

/*
El operador de asignaci�n es el igual =
una variable puede estar definida y posteriormente igualarla (asignarle) otro valor empleando el operador, as�
	int a;
	a = 10;
pero tambi�n es posible igual una variable a otra as�
	int a, b, c;
	a = b = c = 10//ahora las tres variables enteras tienen el valor de 10

Abreviaturas
es posible abreviar operaciones sobre una variable que impliquen a la misma variable
por ejemplo:
	a = a + 10;
En el ejemplo se le est� asignando a la variable a, la suma de s� misma con 10
y esto se puede abreviar de la siguiente forma y aplica para todos los operadores b�sicos, as�
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
	//asignaci�n de variables operadas y abreviaturas
	int e,f;
	e = f = 10;
	e += 10; // otra forma correcta de escribir esto es:  e = e + 10;
	f -= 5; // otra forma correcta de escribir esto es:  f = f - 5;
	printf("El valor de e es: %i\n", e);
	printf("El valor de F es: %i\n", f);
	return 0;
}
