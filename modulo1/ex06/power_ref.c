#include <stdio.h>
#include <math.h>

void power_ref(int *x, int y){
	
	int power = y;
	
	double result = pow(*x, y);
	
	
	printf("\nNumero base: %d\n", *x);
	
	*x = result;
	
	printf("Potência: %d\n", power);
	printf("\nResultado= %.2f\n", result);
	
}
