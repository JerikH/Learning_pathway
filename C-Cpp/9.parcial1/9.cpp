#include <stdio.h>
int main(){
	int n = 1, s, m;
	printf("Introduce la altura del rombo: ");scanf("%i", &m);
	s = m;
	m = m*2;
	do{
		for(int i = 1; i <= s; i++){
			printf(" ");
		}
		for(int i = 1; i <= n; i++){
			if((i % 2) == 0){
				printf(" ");
			}
			else{
				printf("*");	
			}
		}
		printf("\n");
		n+=2;
		s--;
	}while(n <= m);
}
