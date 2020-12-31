#include <stdio.h>

int sum_even(int *p, int num){
	
	int i;
	int sum = 0;
	float d;
	
	for (i=0; i<num; i++){
		
		d = *p%2;
		
		if (d != 0){
			sum = sum + *p;
		}
		
		p++;
	}
	
	return sum;

}
