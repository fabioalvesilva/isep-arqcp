#include <stdio.h>
#include "zero_count.h"

char *ptr1;


int main(void) {
	
	char str[] = "0 0 ";
	ptr1 = str;
	int res = 0;
	
	res = zero_count();
	
return 0;
}
