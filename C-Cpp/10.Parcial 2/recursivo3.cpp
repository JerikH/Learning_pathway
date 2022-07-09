#include <iostream>
#include <stdlib.h>
#include <locale.h>

using namespace std;

void forma(int n){
	
	int i, esp, ast;
		for(i=1; (n-1) >= i ; i++) {
		for(esp = n; esp >= i; esp--) { 
			cout<<" ";
		}
		for(ast = 1; 2 * i-1 >= ast; ast++) {
			cout<<"*";
		}
		cout<<endl;
	}
	
	for(i = 1; n >= i; i++) {
		for(esp = 1; esp <= i; esp++) {
			cout<<" ";
		}
		for(ast = 2*n-1; ((2*i)-1) <= ast; ast--) {
			cout<<"*";
		}
		cout<<endl;
	}
	cout<<endl;
}

int main() {
	setlocale(LC_ALL, "Spanish");
	int n;
	cout<<"Por favor ingrese la altura del rombo hasta su centro: "; 
	cin>>n; cout<<endl;
	forma(n);
	return 0;
}
