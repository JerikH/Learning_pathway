/*c-.  Calcular los factores primos de un entero positivo, ingresado por teclado. 
Ejemplo: Todo n�mero natural no nulo puede descomponerse, de forma �nica, en producto de factores primos. 
Por ejemplo, 24 = 2*2*2*3, es decir, 24 = (2^3)*3. (En la caja de texto, saldr� 2^3 * 3. El s�mbolo ^ significa "elevado a")
*/
#include <stdio.h>
#include <iostream>
using namespace std;
int main(){
		int num, div = 2;
		printf("Por favor ingrese un entero positivo: ");scanf("%i", &num);
		printf("Los factores primos de %i son: ", num);
		do{
			if(num % div){
				div++;
			}
			else{
				printf("%i ", div);
				num /= div;
			}
		}while(num > 1);
		printf(" \n");
	return 0;
}
