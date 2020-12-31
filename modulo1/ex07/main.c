#include <stdio.h>
#include "array_sort1.h"

int main (void){

	int array[5] = {10, 1, 5, 112, 2};
	int *pointer = array;
	int i;

	array_sort1(pointer, 5);
	
	//Impressão do array ordenado;
	printf("\n[");
	for (i = 0; i < 5; i++){
		printf(" %d ", array[i]);
	}
	printf("]");
	
	return 0;
}
