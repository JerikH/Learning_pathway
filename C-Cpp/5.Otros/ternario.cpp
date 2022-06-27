/*variable = (condición) ? situacióntrue : situacionfalse*/
#include <stdio.h>
#include <locale.h>
#include <iostream>
#include <string>
#include <sstream>
using namespace std;
std::string Convert (int number){
    std::ostringstream buff;
    buff<<number;
    return buff.str();
}
int main(){
	setlocale(LC_ALL, "Spanish");
	int n1, n2, n3;
	printf("Por favor ingrese el primer número: ");cin >> n1;
	printf("Por favor ingrese el segundo número: ");cin >> n2;
	printf("Por favor ingrese el tercer número: ");cin >> n3;
	printf(((n1 == n2) || (n2 == n3) || (n1 == n3)) ? "Los valores no son diferentes" : ((n1 < n2) && (n1 < n3)) ? "el menor es: %s", Convert(n1) : (n2 < n3) ? "el menor es: %s", Convert(n2) : "el menor es: %s", Convert(n3));
//	printf("el menor es: "); cout << rest;
	//printf("el menor es: %s", rest);
	/*if(n1 != n2 && n2 != n3 && n1 != n3){
		rest = ((n1 < n2) && (n1 < n3)) ? n1 : (n2 < n3) ? n2 : n3;	
		printf("el menor es: %i", rest);
	}
	else{
		printf("Los números no son diferentes.");
	}*/
	return 0;	
}
