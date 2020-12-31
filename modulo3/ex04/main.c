#include <stdio.h>
#include "vec_add_one.h"

int *ptrvec;
int num = 3;

int main(void) {
	
	int integers[]={1,2,3};
	
	ptrvec=integers;
	
	vec_add_one();
	
return 0;
}
