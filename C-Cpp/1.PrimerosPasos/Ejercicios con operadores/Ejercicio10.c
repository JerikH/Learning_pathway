/*calcular la nota final del curso de un estudiante bajo los siguientes críterios:
		55% del promedio de sus tres parciales
		30% del parcial final
		15% del trabajo final
*/

int main(){
	float par1, par2, par3, parF, trF, prom, final;
	printf("Por favor ingrese las notas de los tres primeros parciales, separadas por espacios: "); scanf("%f %f %f", &par1, &par2, &par3);
	printf("Por favor ingrese la nota del parcial final: "); scanf("%f", &parF);
	printf("Por favor ingrese la nota del trabajo final: "); scanf("%f", &trF);
	prom = (par1 + par2 + par3) / 3;
	final = (prom * 0.55) + (parF * 0.30) + (trF * 0.15);
	printf("La nota definitiva del curso es: %.2f", final);
	return 0;
}
