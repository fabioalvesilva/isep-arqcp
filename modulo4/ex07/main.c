#include <stdio.h>
#include "count_even.h"



int main(void) {
	
	short a[]= {};
	
	short *vec = a;
	int n = 0;
	
	int res = count_even(vec, n);
	
	printf("Resultado é: %d ", res);
	
return 0;
}
