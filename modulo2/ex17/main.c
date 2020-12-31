#include <stdio.h>
#include "sum.h"
#include "subtraction.h"
#include "division.h"
#include "modulus.h"

int A = 10;
int B = 40;

int r = 0;

int main(void) {
	

	r = sum();
	printf("Sum = %d\n", r);
	
	r = subtraction();
	printf("Subtraction = %d\n", r);
	
	r = division();
	printf("Division = %d\n", r);
	
	r = modulus();
	printf("Modulus = %d\n", r);
	
	
	
return 0;
}
