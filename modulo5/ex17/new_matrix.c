#include <stdio.h>
#include <stdlib.h>
#include <string.h>

StructA **new_matrix(int lines, int columns){
	
	int m;
	int **matrix;
	
	matrix=(StructA **) calloc(lines, sizeof(StructA*));
	
	if (matrix == NULL){
		printf("Error.\n");
		exit(1);
	}
	
	for(m=0; m<lines; m++){
		
		*(matrix+m) = (StructA*) calloc(columns, sizeof(StructA));
		if(matrix[m] == NULL){
			printf("Error.\n");
			exit(1);
		}
	}
	
	return matrix;
}
