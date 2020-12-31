#include <stdio.h>
#include "concatBytes.h"

	char byte1 = 45;
	char byte2 = 40;
	short s = 0;

int main(void) {
	

	s = concatBytes();
	
	printf("Concat = %hu:0x%x\n", s, s);
	
	
return 0;
}
