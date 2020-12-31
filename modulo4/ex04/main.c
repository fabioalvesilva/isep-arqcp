#include <stdio.h>
#include "sum_smaller.h"



int main(void) {
	
	int num1 = -1;
	int num2 = 0;
	int smaller_number = 0;
	int *smaller = &smaller_number;
	
	int res = sum_smaller(num1, num2, smaller);
	
	printf("A soma dos dois elementos é: %d ", res);
	
return 0;
}
