/*
Dada la temperatura en grados Fahrenheit (f) 
convertirla a grados centígrados (c) y viceversa 
           c =  5/9 * (f-32)
Realizado por: Jerik David Hincapie Bedoya
*/
#import <stdio.h>
#include <locale.h>
int main(){
	setlocale (LC_CTYPE, "Spanish");
	float f,c,c1;
	printf("Por favor ingrese el valor de la temperatura en grados Fahrenheit (solo el número) que desa convertir a centígrados: \n");scanf("%f", &f);
	printf("Por favor ingrese el valor de la temperatura en grados centígrados (solo el número) que desa convertir a Fahrenheit: \n");scanf("%f", &c1);
	c = (5/9) * (f - 32);
	f = (c1 * (9/5)) + 32;
	printf("%.2f grados Fahrenheit son equivalentes a %.2f grados centígrados\n",f,c);
	printf("%.2f grados centígrados son equivalentes a %.2f grados Fahrenheit",c1,f);
	return 0;
}
