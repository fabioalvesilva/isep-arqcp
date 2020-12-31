#include <stdio.h>

union union_u1{
	char vec[32];
	float a;	
	int b;
} u;

struct struct_s1{
	char vec[32];
	float a;
	int b;
} s;



int main(void) {
	
	printf("Size of U: %d\n", sizeof(u));
	
	printf("Size of s: %d\n", sizeof(s));
	
return 0;
}
