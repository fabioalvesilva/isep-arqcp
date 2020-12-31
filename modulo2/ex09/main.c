#include <stdio.h>
#include "sum_and_subtract.h"

	
char A = 4;
short B = 3;
int C = 20;
int D = 110;
long long s = 0;

int main(void) {
	

	s = sum_and_subtract();
	
	printf("Result = 0x%016llXn", s);
	
	
return 0;
}
