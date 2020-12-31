#include <stdio.h>
#include "inc_and_square.h"



int main(void) {
	
	int num = 3;
	int *v1 = &num;
	int v2 = 2;
	
	int res = inc_and_square(v1, v2);
	
	printf("Resultado é: %d ", res);
	
return 0;
}
