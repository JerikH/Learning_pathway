#include <stdio.h>
#include <locale.h>
#include <stdlib.h>
#include <ctime>
#include <bits/stdc++.h> //librería que permite definir un vector boleano
using namespace std;
#define rango 100 //cambiar este valor para modificar el rango de los números generados aleatoriamente

void count(int arreglo[], int t){
    vector<bool> encontrado(t, false);
    for (int i = 0; i < t; i++) {
        if (encontrado[i] == true){
        	continue;	
		}
        int cont = 1;
        for (int j = i + 1; j < t; j++) {
            if (arreglo[i] == arreglo[j]) {
                encontrado[j] = true;
                cont++;
            }
        }
        printf("%i - %i\n", arreglo[i], cont);
    }
}

int main(){
    setlocale(LC_ALL, "Spanish");
    int n, i, sum = 0, cont = 0, pasada, aux, bandera = 1;
    float  prom = 0;
    printf("Por favor ingrese la cantidad de elementos a generar: ");
    scanf("%i", &n);
    int arreglo[n], elem[n], frec[n];
    srand(time( 0 ));
   	for (i = 0; i < n; i++){
		arreglo[i] = rand() % rango;
	}
   	printf("Los valores del arreglo sin ordenar son:\n\n");
   	for ( i = 0; i < n; i++){
	    printf("%i ", arreglo[i]);
    }
    for (pasada = 0; pasada < n-1 && bandera == 1; pasada++){
    	bandera = 0;
		for (i = 0; i < n-pasada-1 ; i++){
			if (arreglo[i] > arreglo[i+1]){
				bandera = 1;
 				aux = arreglo[i];
 				arreglo[i] = arreglo[i+1];
 				arreglo[i+1] = aux;
 			}
		}
	}
	printf("\n\nLos valores del arreglo ordenado son:\n\n");
   	for ( i = 0; i < n; i++){
	    printf("%i ", arreglo[i]);
    }
    /*
    for(i = 0; i < n; i++){
    	for(int j = 0; j < n; j++){
    		if(arreglo[i] != arreglo[j]){
    			
			}
		}
	}*/
	int t = sizeof(arreglo) / sizeof(arreglo[0]);
	printf("\n\n");
    count(arreglo, t);
    return 0;
}

