#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "asm.h"

int main( void ){
	
	int lines = 10;
	int columns = 20;
	int resultado = 0;
	int i;
	int **a;
	
	a = new_matrix(lines, columns);
	
	fill_matrix(a, lines, columns);
	print_matrix(a, lines, columns);
	
	resultado = count_odd_matrix(a, lines, columns);
	
	printf("\nRESULTADO = %d\n", resultado);
	
	for(i=0; i<lines; i++){
		free(*(a+i));
	}
	free(a);
	
	
	
return 0;
}
