#include <stdio.h>
#include <locale.h>
#include <stdlib.h>
#include <ctime>
#define rango 100 //cambiar este valor para modificar el rango de los números generados aleatoriamente

bool esMultiplo(int numero, int multiplo) {
    if (numero % multiplo == 0) {
        return true;
    } 
	else{
        return false;
    }
}

int main(){
    setlocale(LC_ALL, "Spanish");
    int n, i, sum = 0, cont = 0, c = 0;
    float  prom = 0;
    printf("Por favor ingrese la cantidad de elementos a generar: ");
    scanf("%i", &n);
    int arreglo[n];
    int multiplos[n];
    srand(time( 0 ));
   	for (i = 0; i < n; i++){
		arreglo[i] = rand() % rango;
	}
   	printf("Los valores del arreglo son:\n\n");
   	for ( i = 0; i < n; i++){
	    printf("%i ", arreglo[i]);
    }
    for(i = 0; i < n; i++){
    	if(arreglo[i] % 2 != 0){
    		sum = sum + arreglo[i];
    		cont++;
		}
	}
	prom = sum / cont;
	printf("\n\nLa suma de los impares encontrados es: %i", sum);
	printf("\nEl promedio de los impares encontrados es: %.3f", prom);
	for(i = 0; i < n; i++){
		if(esMultiplo(arreglo[i], 7)){
			multiplos[i] = arreglo[i];
			c++;	
		}
	}
	printf("\n\nLos multiplos de 7 encontrados son:\n\n");
   	for ( i = 0; i < n; i++){
	    printf("%i ", multiplos[i]);
    }
	return 0;
}

