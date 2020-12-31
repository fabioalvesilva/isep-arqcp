#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "asm.h"

int **add_matrixes(int **a, int **b, int y, int k){

	int i;
	int j;
	int **matrix;
	
	matrix = new_matrix(y, k);
	
	//Fill matrix with sum of the values
	for(i=0; i<y; i++){
		for(j=0; j<k; j++){
			matrix[i][j] = a[i][j] + b[i][j];
		}
	}
	
	return matrix;
}
