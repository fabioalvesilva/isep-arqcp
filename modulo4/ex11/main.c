#include <stdio.h>
#include "rotate.h"

int main(void) {
	
	int num = 20;
	int nbits = 3;
	
	int left = rotate_left(num, nbits);
	
	printf("\nRotate left: %d ", left);
	
	int right = rotate_right(num, nbits);
	
	printf("\nRotate right: %d ", right);

	
return 0;
}

