//potencia
#include <iostream>
using namespace std;

int suma(int n1,int  n2){
	if(n2==0) return 1;
	else return  n1*suma(n1, n2-1);
}

int main(){
	int a, res, b;
	cout<<"ingrese la base:  ";
	cin >> a;
	cout<<"ingrese la potencia:  ";
	cin >> b;
	cout<<"el resultado es:   ";
	res = suma(a, b);
	cout << res;
	return 0;
}
