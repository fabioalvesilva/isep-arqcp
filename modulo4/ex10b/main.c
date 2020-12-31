#include <stdio.h>
#include "count_bits_zero.h"



int main(void) {
	
	int x = 0xf0f0f0f0;
	
	int res = count_bits_zero (x);
	
	printf("Resultado é: %d ", res);

	
return 0;
}

