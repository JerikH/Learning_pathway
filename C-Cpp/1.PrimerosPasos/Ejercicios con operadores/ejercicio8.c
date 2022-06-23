//dadas las horas trabajadas y el valor por hora, calcular el salario de un trabajador y mostrarlo en pantalla

int main(){
	float hr, valor, salario;
	printf("Por favor ingrese la cantidad de horas trabajadas: "); scanf("%f", &hr);
	printf("Por favor ingrese el valor de cada hora: "); scanf("%f", &valor);
	salario = hr * valor;
	printf("El salario del empleado es: %.2f", salario);
}
