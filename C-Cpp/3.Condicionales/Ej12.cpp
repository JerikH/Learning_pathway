/*
dados tres puntos con coordenadas (x,y) reales, diga si los tres puntos están sobre
una línea recta. El programa no debe abortar por dividir por cero.
Jerik David Hincapie Bedoya
*/
#include <stdio.h>
#include <locale.h>
#include <iostream>
using namespace std;
int main(){
	setlocale(LC_ALL, "Spanish");
	float x1, x2, x3, y1, y2, y3;
	printf("........................... Utilice el punto '.' como punto decimal ...........................\n");
	printf("Ingrese dos valores reales para las componentes del primer punto (x y) separados por un espacio: ");cin>>x1; cin>>y1;
	printf("Primer punto: (%.3f , %.3f)\n", x1, y1); printf("                 x1      y1\n");
	printf("Ingrese dos valores reales para las componentes del segundo punto (x y) separados por un espacio: ");cin>>x2; cin>>y2;
	printf("Segundo punto: (%.3f , %.3f)\n", x2, y2); printf("                 x2      y2\n");
	printf("Ingrese dos valores reales para las componentes del tercer punto (x y) separados por un espacio: ");cin>>x3; cin>>y3;
	printf("Tercer punto: (%.3f , %.3f)\n", x3, y3); printf("                 x3      y3\n");
	float m1 = (y1*x2 - y1*x3 - y3*x2 + y3*x3);
	float m2 =  (x1*y2 - x1*y3 - x3*y2 + x3*y3);
	if(m1 == m2){
		printf("Los tres puntos SI se encuentran sobre una misma linea recta");
	}
	else{
		printf("Los tres puntos NO están sobre una misma linea recta");
	}
	return 0;
}
