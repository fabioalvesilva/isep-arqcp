#include <stdio.h>
#include "sum2ints.h"


int op1 = 20;
int op2 = 110;

long long s = 0;

int main(void) {
	

	s = sum2ints();
	
	printf("Result = 0x%016llXn", s);
	
	
return 0;
}
