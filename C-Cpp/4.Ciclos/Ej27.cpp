/*
27. Leer 2 n�meros enteros y determinar cu�l de los dos tiene mayor cantidad de d�gitos.
*/
#include <stdio.h>
#include <locale.h>
int main(){
	setlocale(LC_ALL, "Spanish");
	int l, m, n = 0, i = 0, l1, m1;
	printf("Ingrese un n�mero entero: "); scanf("%i", &l);
	printf("Ingrese otro n�mero entero: "); scanf("%i", &m);
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
		printf("El n�mero %i tiene m�s digitos que el n�mero %i", l1, m1);
	}
	else if(i > n){
		printf("El n�mero %i tiene m�s digitos que el n�mero %i", m1, l1);
	}
	else if(n == i){
		printf("El n�mero %i tiene la misma cantidad de digitos que el n�mero %i", l1, m1);
	}
	else{
		printf("Error!");
	}
	return 0;
}
