#include <stdio.h>
#include "activate_bits.h"

int main(void) {
	int num = 17;
	int *ptr = &num;
	int pos = 12;
	
	activate_2bits(ptr, pos);
	
	printf("\nresult = %d:0x%x\n", *ptr, *ptr);
	return 0;
}
