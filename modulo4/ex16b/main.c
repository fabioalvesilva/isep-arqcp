#include <stdio.h>
#include "changes.h"



int main(void) {
	
	int x = 2147483647;
	int *ptr = &x; 
	
	changes(ptr);
	
return 0;
}
