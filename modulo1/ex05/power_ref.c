#include <stdio.h>
#include <math.h>

void power_ref(int *x, int y){
	
	int power = y;
	int result =1;
	
	while (y!=0){
		
		result *= *x;
		y--;
	}
	
	printf("\nNumero base: %d\n", *x);
	printf("Potência: %d\n", power);
	printf("\nResultado= %d ", result);

}
