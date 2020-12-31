#include <stdio.h>
#include "activate_bits.h"

int main(void) {
	
	int a = 0;
	
	int left = 24;
	
	int right = 7;
	
	int res = activate_bits(a, left, right);
	
	printf("\naltered = %d:0x%x\n", res, res);

	
return 0;
}

