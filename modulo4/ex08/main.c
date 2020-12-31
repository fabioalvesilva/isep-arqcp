#include <stdio.h>
#include "calc.h"



int main(void) {
	
	int d = 5;
	int a = 1;
	int *b = &d;
	int c = 5;
	
	int res = calc (a, b, c);
	
	printf("Resultado é: %d ", res);
	
return 0;
}
