#include <stdio.h>
#include "test_equal.h"



int main(void) {
	
	char aText[]= "A";
	char bText[]= "AB";
	
	char *a = aText;
	char *b = bText;
	
	int res = test_equal(a, b);
	
	printf("Resultado é: %d ", res);
	
return 0;
}
