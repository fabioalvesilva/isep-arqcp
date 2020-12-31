#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void print_matrix(int **a, int lines, int columns){
	
	int i;
	int j;
	
	//Print
	for(i=0; i<lines; i++){
		for(j=0; j<columns; j++){
			printf("%d ", a[i][j]);
		}
		printf("\n");
	}
}
