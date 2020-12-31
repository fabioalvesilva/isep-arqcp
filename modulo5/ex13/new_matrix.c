#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int **new_matrix(int lines, int columns){
	
	int m;
	int **matrix;
	
	matrix=(int **) calloc(lines, sizeof(int*));
	
	if (matrix == NULL){
		printf("Error.\n");
		exit(1);
	}
	
	for(m=0; m<lines; m++){
		
		*(matrix+m) = (int*) calloc(columns, sizeof(int));
		if(matrix[m] == NULL){
			printf("Error.\n");
			exit(1);
		}
	}
	
	return matrix;
}
