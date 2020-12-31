#include <stdio.h>
#include "vec_sum_even.h"

int *ptrvec;
int even = 0;
int num = 5;
int res = 0;

int main(void) {
	
	
	int integers[]={1,3,4,5,6};
	
	ptrvec=integers;
	
	res = vec_sum_even();
	
	printf("%d", res);
	
return 0;
}
