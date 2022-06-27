#include <stdio.h>
#include <locale.h>
#include <iostream>
using namespace std;
int main(){
	setlocale(LC_ALL, "Spanish");
	int n1, n2, n3;
	printf("Por favor ingrese el primer valor: ");cin >> n1;
	printf("Por favor ingrese el segundo valor: ");cin >> n2;
	printf("Por favor ingrese el tercer valor: ");cin >> n3;
	if (n1 != n2 && n2 != n3 && n1 != n3){
		if (n1 > n2 && n1 > n3){
			if(n2 > n3){
				printf("Los números ordenados de forma ascendente son: %i, %i, %i.", n3, n2, n1);
			}
			else{
				printf("Los números ordenados de forma ascendente son: %i, %i, %i.", n2, n3, n1);
			}
		}
		else if (n2 > n1 && n2 > n3){
			if(n1 > n3){
				printf("Los números ordenados de forma ascendente son: %i, %i, %i.", n3, n1, n2);
			}
			else{
				printf("Los números ordenados de forma ascendente son: %i, %i, %i.", n1, n3, n2);
			}
		}
		else if (n3 > n1 && n3 > n2){
			if(n1 > n2){
				printf("Los números ordenados de forma ascendente son: %i, %i, %i.", n2, n1, n3);
			}
			else{
				printf("Los números ordenados de forma ascendente son: %i, %i, %i.", n1, n2, n3);
			}
		}		
	}
	else {
		printf("los valores no son diferentes");
	}
	return 0;
}
