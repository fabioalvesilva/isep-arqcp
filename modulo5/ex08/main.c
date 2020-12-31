#include <stdio.h>
#include <string.h>
#include "asm.h"

int main( void ){

	Student s1;
	
	Student *s = &s1;
	
	short vw[3] = {2,3,4};
	int vj = 10;
	char vc[3] = {'F','T','Y'};
	
	fill_s2(s, vw, vj, vc);

	
return 0;
}
