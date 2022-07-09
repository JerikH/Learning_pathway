/*
10-. Realizar el  código, que tenga como salida el de la figura, se requiere que tenga manejo de ciclos y no de cadenas:

 123456789
  1234567
   12345
    123
     1
    123
   12345
  1234567
 123456789
*/

#include <stdio.h>
int main(){
	int n = 9, s = 2, l = 1;
		printf(" ");
		do{
		for(int i = 1; i <= n; i++){
			printf("%i", l);
			l++;
		}
		l = 1;
		printf("\n");
		if(n != 1){
			for(int i = 1; i <= s; i++){
			printf(" ");
			}
		}
		n-=2;
		s++;
	}while(n >= 1);
	n = 3;
	s = 4;
	do{
		for(int i = 1; i <= s; i++){
			printf(" ");
		}
		for(int i = 1; i <= n; i++){
			printf("%i", l);
			l++;
		}
		l = 1;
		printf("\n");
		n+=2;
		s--;
	}while(n <= 9);
	return 0;
}

