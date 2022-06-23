#include <stdio.h>
#include <stdlib.h>
/*Notas generales
	scanf("%tipo", &variable); --> almacenar� un dato que se le ingrese y que corresponda al tipo indicado, pero si encuentra un espacio no
	lee hacia adelante, (en caso de ser un string no es necesario el signo & en la asignaci�n.
	tambi�n es posible hacer que asigne dos valores distintos en dos variables distintas en la misma l�nea, as�
	scanf("%tipo %tipo", &variable1, &variable2);
		para entrar los datos con este �ltimo m�todo, existen dos opciones, se ingresa un dato y se da un enter para luego ingresar el otro dato
		o, se ingresa un dato, un espacio y el siguiente dato, de cualquiera de las dos formas es correcto. 
gets(variable); --> almacena lo que sea que se le entregue en la variable, pero lo que se entre debe corresponder al tipo de variable

*/
int main(){
    /* Salida de multiples datos en un mismo printf
    int a = 10;
    float b = 15.5;
    char c = 'e';
    printf("El entero es %i el flotante es: %.1f el caracter es: %c", a, b, c);
    */
   //entradas
    int a;
    float b;
    char h;
    impresion();// llamado de una funci�n definida en el c�digo
    printf("Por favor ingrese el caracter: ");
    scanf("%c",&h); //Entrada de tipo char que se almacena en la variable h
    printf("El caracter es %c\n", h);
    printf("Por favor entre el valor de la variable 'a': ");
    scanf("%i",&a); //Entrada de tipo entero que se almacena en la variable a
    printf("El valor es %i\n", a);
    printf("Por favor ingrese el valor del flotante: ");
    scanf("%f", &b); //Entrada de tipo flotante que se almacena en la variable b
    printf("El valor del flotante es: %.2f\n", b);
    system("pause");
    return 0;
}
int impresion(){//se define una funci�n que contiene un bloque de c�digo que puede ser llamado y recibe par�metros en el par�ntesis
	char x[50]; //definici�n de un string, char de 50 posiciones como m�ximo
    printf("Por favor ingrese su nombre: ");
    gets(x); //entrada de un string %s, que se almacenar� en x
    printf("Su nombre es: %s\n", x);
}
