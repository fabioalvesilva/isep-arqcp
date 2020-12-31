#include <stdio.h>
#include "activate_bit.h"

int main(void) {
	
	int num = 17;
	int *ptr = &num;
	int pos = 12;
	
	int altered = activate_bit(ptr, pos);
	
	printf("\naltered = %d\n", altered);
	printf("\nresult = %d:0x%x\n", *ptr, *ptr);
	return 0;
}

