#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int count_odd_matrix(int **m, int y, int k){

	int i;
	int j;
	
	int counter = 0;
	
	//Search element
	for(i=0; i<y; i++){
		for(j=0; j<k; j++){
			if((m[i][j]/2)*2 != m[i][j]){
				counter++;
			}
		}
	}
	
	return counter;
}
