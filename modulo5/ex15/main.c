#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "asm.h"

int main( void ){
	
	int lines = 10;
	int columns = 20;
	int **resultado;
	int i;
	int **a;
	int **b;
	
	a = new_matrix(lines, columns);
	b = new_matrix(lines, columns);
	
	fill_matrix(a, lines, columns);
	fill_matrix(b, lines, columns);
	
	resultado = add_matrixes(a, b, lines, columns);
	
	
	printf("\n##MATRIZ A##\n");
	
	print_matrix(a, lines, columns);

	printf("\n##MATRIZ B##\n");
	
	print_matrix(b, lines, columns);
	
	printf("\n##RESULTADO##\n");
	
	print_matrix(resultado, lines, columns);
	
	
	
	for(i=0; i<lines; i++){
		free(*(a+i));
		free(*(b+i));
		free(*(resultado+i));
	}
	free(a);
	free(b);
	free(resultado);
	
return 0;
}
