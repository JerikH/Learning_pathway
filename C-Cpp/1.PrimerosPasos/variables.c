#include <stdio.h>
/*Notas generales
Excepto por las definiciones que inicien por # o las funciones, todas las líneas deben de llevar el ; al final
C tiene en cuenta las variables locales y globales
si se define una variable de tipo int, significa que esta variable va a almacenar números enteros
si se define una variable de tipo float, significa que esta variable va a almacenar núemros de punto flotante (décimales)
para insertar valores de variables en una impresión de tipo printf(""), se debe considerar lo siguiente
        si la variable a insertar es de tipo entero se hace de la siguiente forma
                int variableI = 10
                printf("El valor de la variable de tipo entero es: %i", variableI)
        si la variable a insertar es de tipo flotante se hace de la siguiente forma
                float variableF = 3.1416
                printf("El valor de la variable de tipo flotante es; %f", variableF)
            En el caso de las de tipo flotante, si se desea recortar la cantidad de decimales que está usa en la impresión se hace lo siguiente
                float variableF = 3.1416
                printf("El valor de la variable de tipo flotante con dos décimales es: %.2f", variableF)
*/             
#define macro 25.23 //Definición de una macro con efecto global

int entero = 10; //Definición de a una variable de tipo entero y es global al código
float flotante = 13.256; //Definición de una variable de tipo flotante y es global al código

int main(){ //inicio de la definción de la función main, esta función SIEMPRE debe estar en el código
    int local = 2; //local variable definida de tipo entero y es local a la función
    printf("El valor de local es: %i\n", local);
    int sumaI = 0; //sumaI varible definida para posteriormente almacenar una suma de tipo entero
    float sumaF = 0.0; //sumaF variable definica para posteriomente almacenar una suma de tipo flotante
    local = local + entero; //Reasignación del valor de la variable local 
    sumaI = entero + local; //Reasignación del valor de la variable sumaI 
    sumaF = macro + flotante; //Reasignación del valor de la variable sumaF
    printf("El valor de local es: %i\n", local);
    printf("El valor de sumaI es: %i\n", sumaI);
    printf("El valor de sumaF es: %f\n", sumaF);
    printf("El valor de sumaF a dos décimales es: %.2f\n", sumaF);
    //también se pueden operar variables de tipos opuestos
    sumaI = entero + flotante; //Reasignación del valor de la variable sumaF con la suma de variables de tipos opuestos se almacenan en una variable de tipo entero y por lo tanto el valor no tiene puntos décimales
    sumaF = entero + flotante; //Reasignación del valor de la variable sumaF con la suma de variables de tipos opuestos se almacenan en una variable de tipo flotante y por lo tanto el valor conservará los puntos décimales
    printf("El valor de sumaI operada con variables de tipos opuestos es: %i\n", sumaI);
    printf("El valor de sumaF operada con variables de tipos opuestos es: %f\n", sumaF);
    return 0;
}