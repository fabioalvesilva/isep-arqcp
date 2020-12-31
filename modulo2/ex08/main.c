#include <stdio.h>
#include "crossSumBytes.h"

	short s = 0;

int main(void) {
	

	s = crossSumBytes();
	
	printf("CROSS SUM = %hu:0x%x\n", s, s);
	
	
return 0;
}
