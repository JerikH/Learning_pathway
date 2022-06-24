/*
en una sala de cine muy conocida de Bogota, desean hacer uso de la tecnologia para
el manejo de la boleteria. Para esto, le cuentan a usted los siguientes datos al
respecto del costo de las boletas:
- Primera clase, costo igual a $5500 si es de Lunes a Jueves.
- Segunda clase, costo igual a $2500 si es de Lunes a Jueves.
- Si es un viernes, sabado o domingo, el costo es de $1500 sin importar la clase.
- Si un estudiante y el dia es un miercoles o un jueves le hacen un descuento de $500.
Con todo esto, hay que decirle a una persona en cuanto le sale el costo de su boleta.
Jerik David Hincapie Bedoya
*/
#include <stdio.h>
#include <locale.h>
#include <iostream>
#include <string>
using namespace std;

int main(){
	setlocale(LC_ALL, "Spanish");
	string dia, clase, estudiante;
	int boleta;
	printf("\n.......... Por favor utilice solo letras minúsculas en sus respuestas y sin acentos ..........\n");
	printf("Por favor indique qué clase de boleta desea comprar (primera/segunda) clase: ");cin >> clase;
	printf("Por favor indique el día en que desea comprar su boleta: ");cin >> dia;
	printf("¿Es usted un estudiante? (si/no) ");cin >> estudiante;
	if(clase == "primera"){
		if(dia == "lunes" || dia == "martes"){
			boleta = 5500;
		}
		else if(dia == "miercoles" || dia == "jueves"){
			if(estudiante == "si"){
				boleta = 5000;
			}
			else if(estudiante == "no"){
				boleta = 5500;
			}
			else{
				printf("¿Es usted un estudiante?: respuesta no reconocida");
				return 0;
			}
		}
		else if(dia == "viernes" || dia == "sabado" || dia == "domingo"){
			boleta = 1500;
		}
		else{
			printf("Día no reconocido");
			return 0;
		}
	}
	else if(clase == "segunda"){///
		if(dia == "lunes" || dia == "martes"){
			boleta = 2500;
		}
		else if(dia == "miercoles" || dia == "jueves"){
			if(estudiante == "si"){
				boleta = 2000;
			}
			else if(estudiante == "no"){
				boleta = 2500;
			}
			else{
				printf("¿Es usted un estudiante?: respuesta no reconocida");
				return 0;
			}
		}
		else if(dia == "viernes" || dia == "sabado" || dia == "domingo"){
			boleta = 1500;
		}
		else{
			printf("Día no reconocido");
			return 0;
		}
	}
	else{
		printf("Clase no reconocida");
		return 0;
	}
	printf("El valor de la boleta es de: $%i", boleta);
	return 0;
}
