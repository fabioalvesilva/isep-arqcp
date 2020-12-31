#include <stdio.h>
#include <string.h>
#include "asm.h"

int main( void ){

	Student s1;
	
	Student *s = &s1;
	
	int vi = 4;
	char vc = 'F';
	int vj = 10;
	char vd = 'F';
	
	fill_s1(s, vi, vc, vj, vd);

	
return 0;
}
