#include <stdio.h>
#include <stdlib.h>
#include <string.h>


void fill_matrix(int **a, int lines, int columns){

	int i;
	int j;
	
	//Fill with random numbers
	for(i=0; i<lines; i++){
		for(j=0; j<columns; j++){
			a[i][j]= rand() % 20;
		}
	}
}
