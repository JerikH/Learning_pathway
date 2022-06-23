//desarrollar un programa que permita a una tienda calcular el valor final de un producto descontando el 15% del valor del producto

int main(){
	float valor, final;
	printf("Por favor ingrese el valor original del producto: "); scanf("%f", &valor);
	final = valor - ((15 * valor) / 100);
	printf("El valor final del producto es: $%.2f", final);
	return 0;
}
