/*
Dadas las siguientes instrucciones:
struct Tdato
{
          int b;
          char s[100];
};
int x, n, a[10]={1,2,3,4,5,6,7,8,9,0};
double f;
char nombre[]="Ejercicios archivos binarios";
Tdato p;
ifstream f1;
ofstream f2;
f1.open("entrada.dat", ios::binary);
f2.open("salida.dat", ios::binary);

Escribe las instrucciones para realizar cada una de las siguientes operaciones:
a. Escribir el dato entero x en el archivo.
b. Escribir el dato double f en el archivo.
c. Escribir los 5 primeros elementos del array a en el archivo.
d. Escribir los 10 primeros caracteres de la cadena nombre en el archivo.
e. Escribir el dato de tipo Tdato p en el archivo.
f. Leer un dato entero del archivo y almacenarlo en la variable x.
g. Leer un dato double del archivo y almacenarlo en la variable f.
h. Leer 5 enteros y almacenarlos en el array a.
i. Leer 10 caracteres y almacenarlos en la cadena nombre.
j. Leer un dato de tipo Tdato y almacenarlo en la variable p.
k. Mostrar el contenido de los archivos
\
	Jerik David Hincapie Bedoya
*/
#include <iostream>
#include <fstream>
#include <string.h>
#include <locale.h>
using namespace std;

void clonar(){
	string cadena;
	cadena = "copy salida.dat entrada.dat";
	system(cadena.c_str());
	cout << "\n";
}

struct Tdato{
	int b;
	char s[100];
}; 

int x, n, a[10]={1,2,3,4,5,6,7,8,9,0};
float f;
char nombre[]="Ejercicios archivos binarios";
Tdato p;

void lectura(char archivo[]);

void escritura(){	
	ofstream f2;
	f2.open("salida.dat", ios::out | ios::binary);
	
	cout << "a. Escribir el dato entero x en el archivo. \n";
	cout << "Ingrese un número entero: ";
	cin >> x;
	cout << "\n";
	f2.write((char *)&x, sizeof(int)); 
	
	cout << "b. Escribir el dato double f en el archivo. \n";
	cout << "Ingrese un número décimal: ";
	cin >> f;
	cout << "\n";
	f2.write((char *)&f, sizeof(float)); 
	
	//cout << "c. Escribir los 5 primeros elementos del array a en el archivo. \n";
	f2.write((char *)&a[0], 5*sizeof(float));
	
	//cout << "d. Escribir los 10 primeros caracteres de la cadena nombre en el archivo. \n";
	f2.write(nombre, 10);
	
	//cout << "e. Escribir el dato de tipo Tdato p en el archivo. \n";
	p.b = 20;
	strcpy(p.s, "textocadena");
	f2.write((char * )(&p), sizeof(Tdato));
	
	f2.close();	
	//clonar(); //si se desea cambiar los valores del segundo archivo (entrada.dat) descomentar esta línea para copiar los valores del primero (salida.dat)
	char archivo[] = "salida.dat";
	lectura(archivo); //comentar esta línea para solo ver los valores contenidos en el segundo archivo (entrada.dat)
}

void lectura(char archivo[]){
	cout << "Información contenida en el archivo: " << archivo << "\n\n";
	ifstream f1;
	f1.open(archivo, ios::in | ios::binary); //archivo pre-definido para poder leerlo posteriormente, valores en la linea 137-142
	
	cout << "f. Leer un dato entero del archivo y almacenarlo en la variable x.\n";
	f1.read((char *)&x, sizeof(int));
	cout << "\tx = " << x << "\n\n";
	
	cout << "g. Leer un dato double del archivo y almacenarlo en la variable f.\n";
	f1.read((char *)&f, sizeof(float));
	cout << "\tf = " << f << "\n\n";
	
	cout << "h. Leer 5 enteros y almacenarlos en el array a.\n";
	f1.read((char *)&a[0], 5*sizeof(int));
	cout << "\ta = ";
	for(n = 0; n < 5; n++){
		cout << a[n] << "\t";
	}
	cout << "\n\n";
	
	cout << "i. Leer 10 caracteres y almacenarlos en la cadena nombre.\n";
	for(n = 0; n < 29; n++){
		nombre[n] = ' ';
	}
	f1.read(nombre, 10);
	cout << "\tnombre = " << nombre;
	cout << "\n\n";
	
	cout << "j. Leer un dato de tipo Tdato y almacenarlo en la variable p.\n";
	f1.read((char *)(&p), sizeof(Tdato));
	cout << "\tp.b = " << p.b << endl;
	cout << "\tp.s = " << p.s << endl;
	cout << "\n\n\n";
}

int main(){
	setlocale(LC_ALL, "Spanish");
	escritura();
	char archivo[] = "entrada.dat";
	lectura(archivo);
	system("pause"); 
	return 0;
}

/*
valores almacenados de forma predeterminada en el archivo entrada.dat
x = 7
f = 4.5
a = {1, 2, 3, 4, 5}
nombre = "Ejercicios"
p.b = 20
p.s = "textocadena"
*/
