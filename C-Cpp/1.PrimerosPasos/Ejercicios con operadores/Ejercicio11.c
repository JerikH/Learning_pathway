//calcular el n�mero de segundos que se encuentran en el n�mero de horas, minutos y segundos ingresados
#include <stdio.h>
int main(){
	int hr, min, seg, final;
	printf("Por favor ingrese la cantidad de horas, minutos y segundos respectivamente de los que desea generar el total en segundos,\nseparados por espacios. En caso de no emplear una de las categor�as ingresar un cero en la posici�n: ");
	scanf("%i %i %i", &hr, &min, &seg);
	hr = (hr * 60) * 60;
	min *= 60;
	final = hr + min + seg;
	printf("La cantidad total de segundos seg�n los datos ingresados es: %i", final);
	return 0;
}
