#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "asm.h"

int main( void ){
	
	int lines = 10;
	int columns = 20;
	int num = 120;
	int resultado;
	int **a;
	a = new_matrix(lines, columns);
	
	int i;
	int j;
	
	//Fill with random numbers
	for(i=0; i<lines; i++){
		for(j=0; j<columns; j++){
			a[i][j]= rand() % 20;
		}
	}
	
	//Print
	for(i=0; i<lines; i++){
		for(j=0; j<columns; j++){
			printf("%d ", a[i][j]);
		}
		printf("\n");
	}
	
	resultado = find_matrix(a, lines, columns, num);
	
	printf("\nRESULTADO = %d", resultado); 
	
	
	for(i=0; i<lines; i++){
		free(*(a+i));
	}
	free(a);
	
	
	
return 0;
}
