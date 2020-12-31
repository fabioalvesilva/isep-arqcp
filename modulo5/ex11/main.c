#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "asm.h"

int main( void ){
	
	int lines = 10;
	int columns = 20;
	
	int **a;
	a = new_matrix(lines, columns);
	
	int i;
	int j;
	
	for(i=0; i<lines; i++){
		for(j=0; j<columns; j++){
			printf("%d ", a[i][j]);
		}
		printf("\n");
	}
	
	
	
	for(i=0; i<lines; i++){
		free(*(a+i));
	}
	free(a);
	
	
	
return 0;
}
