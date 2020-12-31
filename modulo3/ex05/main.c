#include <stdio.h>
#include "vec_sum.h"
#include "vec_avg.h"

int *ptrvec;
int num = 3;
int sum = 0;

int main(void) {
	
	int integers[]={1,2,3};
	
	ptrvec=integers;

	vec_avg();
	
return 0;
}
