#include <stdio.h>
#include "sum_even.h"

int main(void){
	
	int array[6] = {1,3,4,6,9,2};
	int *pointer = array;

	printf("A soma = %d ", sum_even(pointer, 6));
	
	

return 0;
}
