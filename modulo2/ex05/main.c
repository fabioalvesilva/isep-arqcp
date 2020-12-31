#include <stdio.h>
#include "swapBytes.h"

	short s = 34;

int main(void) {
	

	s = swapBytes();
	
	printf("swap = %hu:0x%x\n", s, s);
	
	
return 0;
}
