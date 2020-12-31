#include <stdio.h>
#include "needed_time.h"

short current = 1;
short desired = 2;

int r = 0;

int main(void) {
	

	r = needed_time();
	
	printf("Result = %d\n", r);
	
	
return 0;
}
