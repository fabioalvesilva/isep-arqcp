#include <stdio.h>
#include "asm.h"

int main( void ){

	Student s1;
	
	Student *s = &s1;
	
	int grades[] = {1,2,3,4,5,6,7,8,9,10};
	
	int *g = grades;
	
	update_grades(s, g);
	

return 0;
}
