/*Lea dos valores reales (x,y) y diga en que cuadrante del espacio cartesiano está.
Jerik David Hincapie Bedoya*/
#include <stdio.h>
#include <locale.h>
#include <iostream>
using namespace std;
int main(){
	setlocale(LC_ALL, "Spanish");
	float x, y;
	printf("Por favor ingrese un valor para x: ");cin >> x;
	printf("Por favor ingrese un valor para y: ");cin >> y;
	if((x > 0) && (y > 0)){
		printf("El punto indicado se encuentra en el primer cuadrante del plano cartesiano (superior derecho)");
	}
	else if((x < 0) && (y > 0)){
		printf("El punto indicado se encuentra en el segundo cuadrante del plano cartesiano (superior izquierdo)");
	}
	else if((x < 0) && (y < 0)){
		printf("El punto indicado se encuentra en el tercer cuadrante del plano cartesiano (inferior izquierdo)");
	}
	else if((x > 0) && (y < 0)){
		printf("El punto indicado se encuentra en el cuarto cuadrante del plano cartesiano (inferior derecho)");
	}
	else if((x == 0) && (y == 0)){
		printf("El punto indicado está en el centro del plano cartesiano (0,0)");
	}
	else{
		printf("El punto indicado no está delimitado en uno de los cuadrantes se encuentra en uno de los ejes");
	}
	
	return 0;
}
