/*
8-. Se pide hacer un programa recursivo, tal que, dado un entero positivo mayor de 4 d�gitos, indique si es
capic�a (Capic�a es un n�mero que se lee igual de izquierda a derecha que de derecha a izquierda 
Ej: 1221, 3333, 8558, 1001, 2332.
	Jerik David Hincapie Bedoya
*/
#include <stdio.h>
#include <locale.h>

int invr(int n, int digitos){
	int rest, cout;
	if (n < 10) return n;
	else{	
    	rest = n % 10;
    	cout = n / 10;
    	return rest*digitos + invr(cout, digitos/10);
 	}
}

int digitos(int tmp, int digit){
	if(tmp < 10){
		return digit;
	}
	else{
		tmp /= 10;
		digit *= 10;
		return digitos(tmp, digit);
	}
}

int main(){
	setlocale(LC_ALL, "Spanish");
	int n, invrt, digit = 1;
	printf("Por favor ingrese un n�mero: ");scanf("%i", &n);
	digit = digitos(n, digit);
	invrt = invr(n, digit);
	if (invrt == n){
		printf("El n�mero %i es capic�a", n);	
	}
	else{
		printf("El n�mero %i NO es capic�a", n);	
	}
	return 0;
}
