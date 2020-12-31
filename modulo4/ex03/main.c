#include <stdio.h>
#include "greatest.h"

int main(void) {
	
	int a = 3;
	int b = 4;
	int c = 5;
	
	int res = greatest(a, b, c);
	
	printf("O maior elemento é: %d ", res);
return 0;
}
