/*Elabore un programa que simule la marcación de un reloj digital desde las 00:00:00 hasta las 23:59:59*/

#include <stdio.h>
int main(){
	int h = 00, m = 00, s = 00;
	do{
		do{
			do{
				printf("%i:%i:%i\n",h,m,s);
				s++;
			}while(s <= 59);
			m++;
			s = 0;
		}while(m <= 59);
		h++;
		m = 0;
	}while(h <= 23);
return 0;
}
