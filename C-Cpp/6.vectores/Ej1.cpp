/*
Leer 10 números enteros, almacenarlos en un vector y calcularle el factorial a cada uno de
los números leídos almacenándolos en otro vector.
*/
#include<stdio.h>
#include<locale.h>

void datos(int numeros[10]){
	printf("Por favor ingrese 10 números enteros positivos para cálcular sus factoriales: \n");
	for(int c = 0; c < 10; c++){
		scanf("%i", &numeros[c]);
		fflush(stdin);
		if(numeros[c] < 0){
			do{
				printf("Por favor ingrese un número entero POSITIVO: "); 
				scanf("%i", &numeros[c]);
				fflush(stdin);
			}while(numeros[c] < 0);
		}
	}
}

long long factorial(int numeros[10], long long int factoriales[10]){
	long long int result = 1;
    for(int n = 0; n < 10; n++){
    	for (int co = 1; co <= numeros[n]; co++){
        	result = result * co;
    	}
    	factoriales[n] = result;
    	result = 1;
    }
}

long long imprimir(int numeros[10], long long int factoriales[10]){
	printf("\nNúmeros ingresados: \n");
	for(int n = 0; n < 10; n++){
		printf("%i  ", numeros[n]);
	}
	printf("\nFactoriales: \n");
	for(int i = 0; i < 10; i++){
		printf("%i  ", factoriales[i]);
	}
}

int main(){
	setlocale(LC_ALL, "Spanish");
	int numeros[10];
 	long long int factoriales[10];
	datos(numeros);
	factorial(numeros, factoriales);
	//imprimir(numeros, factoriales); //ejecutar esta línea para observar el contenido del vector factoriales
	return 0;
}
