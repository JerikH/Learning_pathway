//Ejercicio número 4 del parcial --> Jerik David Hincapie Bedoya
#include <stdio.h>
#include <locale.h>
#include <stdlib.h>
#include <ctime>
#define rango 10000 //cambiar este valor para modificar el rango de los números generados aleatoriamente

int main(){
    setlocale(LC_ALL, "Spanish");
    int n, i, j, bandera = 1, pasada, aux;
    int arreglo[5][5];
    int temp[5];
    srand(time( 0 ));
   	for (i = 0; i < 5; i++){
		for(j = 0; j < 5; j++){
			arreglo[i][j] = rand() % rango;
		}
	}
   	printf("Los valores de la matriz desordenada son:\n\n");
   	for ( i = 0; i < 5; i++){
	    for(j = 0; j < 5; j++){
	    	printf("%i\t", arreglo[i][j]);
		}
		printf("\n");
    }
    for(i = 0; i < 5; i++){
    	for(j = 0; j < 5; j++){
    		temp[j] = arreglo[i][j];
    	}
		for(pasada = 1; pasada <= 5 - 1; pasada++){
			for(int l = 0; l <= 5 - 2; l++){
				if(temp[l] > temp[l+1]){ //cambiar de > a < para alterar el sentido del ordenamiento
					aux=temp[l];
 					temp[l] = temp[l+1];
 					temp[l+1] = aux;
				}
			}
		}
		for(j = 0; j < 5; j++){
    		arreglo[i][j] = temp[j];
    	}
    }
    printf("\nLos valores de la matriz ordenada por filas son:\n\n");
   	for ( i = 0; i < 5; i++){
	    for(j = 0; j < 5; j++){
			printf("%i\t", arreglo[i][j]);
		}
		printf("\n");
    }
	return 0;
}
