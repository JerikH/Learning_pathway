//calcular el incremento del salario de un trabajador, si se le incrementa el 25% sobre su salario anterior

int main(){
	float origen, final;
	printf("Por favor ingrese el salario anterior al aumento: "); scanf("%f", &origen);
	final = origen + ((origen * 25) / 100);
	printf("El nuevo salario es: %.2f", final);
	return 0;
}
