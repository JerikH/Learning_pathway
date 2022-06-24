/*
Programa que lee un entero positivo de dos dígitos y determina si sus dígitos son números primos.
Jerik David Hincapie Bedoya
*/
#include <stdio.h>
int main () { 
	int num, d1, d2;
	bool primo1 = false, primo2 = false;
	printf("Ingrese un entero positivo de dos digitos: "); scanf("%i", &num);
	if(num < 100 && num > 9){
	 	d1 = num / 10; d2 = num % 10;
		switch (d1){		
			case 2: case 3: 
			case 7: case 5:  
			  primo1 = true; 
			  printf("El digito %i, es primo\n", d1);
			break; 
			default:
				printf("El digito %i, no es primo\n", d1);
		}
		switch (d2){
			
		  	case 2: case 3: 
		  	case 7: case 5:  
		   		primo2 = true; 
		   		printf("El digito %i, es primo\n", d2);
		   	break; 
		   	default:
				printf("El digito %i, no es primo\n", d2);
		} 
		if (primo1 && primo2){
			printf("Ambos digitos son primos"); 
		}
		else{
			printf("Por lo menos uno de los digitos no es primo"); 
		}
	}
	else{
		printf("El número no tiene dos digitos o no es positivo"); 
	}  
	return 0;
} 
