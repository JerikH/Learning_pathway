#include <stdio.h>

int main(){
    //Carácteres
    char a = 'e'; //variable de tipo char que almacena un carácter, ocupa 1byte en memoria
    printf("Esto es un carácter: %c\n", a);
    //enteros
    int c = 1024; //variable de tipo entero que almacena un número entero, ocupa 2bytes en memoria
    printf("esto es un entero: %i\n", c);
    short b = -15; //variable de tipo entero "corto" ocupa 2bytes en memoria
    printf("Esto es un entero corto: %i\n", b);
    long e = 123456; //variable de tipo entero "largo" ocupa 4bytes en memora
    printf("Esto es un entero largo: %li\n", e);
    //flotantes
    float f = 3.1416; //variable de tipo flotante que almacena un número de punto flotante o real, ocupa 4bytes en memoria
    printf("esto es un flotante: %.3f\n", f);
    double m = 123123.123123; //variable de tipo flotante que posee un rango mayor a float, ocupa 8 bytes en memoria
    printf("esto es un flotante extenso: %.5lf\n", m);
    //otro
    unsigned r = 3654; //variable que almacena un número natural mayor o igual a 0, ocupa 2bytes en memoria
    printf("esto es un real positivo: %i\n", r);
    return 0;
}