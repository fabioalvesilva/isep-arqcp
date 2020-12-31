#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int find_matrix(int **m, int y, int k, int num){

	int i;
	int j;
	
	int found = 0;
	
	//Search element
	for(i=0; i<y; i++){
		for(j=0; j<k; j++){
			if(m[i][j]==num){
				found=1;
			}
		}
	}
	
	return found;
}
