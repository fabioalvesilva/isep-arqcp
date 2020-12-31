#include <stdio.h>
#include "activate_bit.h"

int main(void) {
	
	int num = 20;
	
	int *ptr = &num;
	
	int pos = 3;
	
	int res = activate_bit(ptr, pos);
	
	printf("\nActivate: %d", res);

	
return 0;
}

