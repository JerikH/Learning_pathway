#include <iostream>
#include <locale.h>

using namespace std;

void enteroABinario(int n){
	if(n / 2 == 1 || n / 2 == 0){
		cout<<n/2<<n%2;
	}
	else{
		enteroABinario(n/2);
		cout<<n%2;
	}
}

int main(){ 
	setlocale(LC_ALL, "Spanish");
	int x;	
	cout<<"Por favor ingrese el valor a convertir: "; cin>>x;
	enteroABinario(x);
	cout<<endl;
	return 0;
}
