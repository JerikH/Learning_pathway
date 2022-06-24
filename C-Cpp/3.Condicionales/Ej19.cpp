/*
En una agencia de viajes lo contrataron para decirle a cada cliente en cuanto le sale
su pasaje de acuerdo a unas politicas:
- Si el pasajero es menor de edad, se le hace un descuento del 10%.
- Si es estudiante se le hace un descuento del 15%.
- Si es fumador, se le cobra un interes del 30%.
- Si es mayor de 60 años de le hace un descuento del 20%.
- Si no es fumador y es estudiante o menor de edad se le hace un descuento adicional del 12%.
Pidiendo todos los datos necesarios, digale al pasajero en cuanto le sale el pasaje.
Jerik David Hincapie Bedoya
*/
#include <stdio.h>
#include <locale.h>
#include <iostream>
using namespace std;

int main(){
	setlocale(LC_ALL, "Spanish");
	float base, final;
	int edad;
	string fuma, estudiante;
	printf("Por favor ingrese el valor base del pasaje: "); cin >> base;
	printf("Por favor ingrese su edad: "); cin >> edad;
	printf("¿Usted fuma? (si/no): "); cin >> fuma;
	printf("¿Es usted un estudiante? (si/no): "); cin >> estudiante;
	if(base > 0){
		if(edad < 18){
			if(estudiante == "si"){
				final = base - ((base * 25)/100);
				if(fuma == "si"){
					final = final + ((final * 30)/100);
				}
			}
			else{
				final = base - ((base * 10)/100);
				if(fuma == "si"){
					final = final + ((final * 30)/100);
				}
				else{//linea nueva
					final = final - ((final * 12)/100);	
				}//linea nueva
			}
		}
		else if(edad > 60){
			if(estudiante == "si"){
				final = base - ((base * 35)/100);
				if(fuma == "si"){
					final = final + ((final * 30)/100);
				}
				else{//linea nueva
					final = final - ((final * 12)/100);	
				}//linea nueva
			}
			else{
				final = base - ((base * 20)/100);
				if(fuma == "si"){
					final = final + ((final * 30)/100);
				}
			}
		}
		else{
			if(estudiante == "si"){
				final = base - ((base * 15)/100);
				if(fuma == "si"){
					final = final + ((final * 30)/100);
				}
				else{//linea nueva
					final = final - ((final * 12)/100);	
				}//linea nueva
			}
			else{
				if(fuma == "si"){
					final = final + ((final * 30)/100);
				}
				else{
					final = base;
				}
			}	
		}
	}
	else{
		printf("El valor base es 0");
	}
	printf("El valor del pasaje es: %.2f", final);
	return 0;
}
