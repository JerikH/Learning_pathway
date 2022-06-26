/*
27. Leer 2 números enteros y determinar cuál de los dos tiene mayor cantidad de dígitos.
*/
#include <stdio.h>
#include <locale.h>
int main(){
	setlocale(LC_ALL, "Spanish");
	int l, m, n = 0, i = 0, l1, m1;
	printf("Ingrese un número entero: "); scanf("%i", &l);
	printf("Ingrese otro número entero: "); scanf("%i", &m);
	l1 = l;
	m1 = m;
	if(l > 9 || l < -9){
		do{
			l /= 10;
			n++;
		}while(l > 9 || l < -9);
	}
	if(m > 9 || m < -9){
		do{
			m /= 10;
			i++;
		}while(m > 9 || m < -9);
	}
	n++;
	i++;
	if(n > i){
		printf("El número %i tiene más digitos que el número %i", l1, m1);
	}
	else if(i > n){
		printf("El número %i tiene más digitos que el número %i", m1, l1);
	}
	else if(n == i){
		printf("El número %i tiene la misma cantidad de digitos que el número %i", l1, m1);
	}
	else{
		printf("Error!");
	}
	return 0;
}
