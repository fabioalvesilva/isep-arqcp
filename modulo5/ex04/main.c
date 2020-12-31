#include <stdio.h>
#include "asm.h"

int main( void ){

	Student s1;
	
	Student *s = &s1;
	
	fill_student(s, 20, 4, "ananas", "ESpinho");
	
	printf("%d age: \n", s->age);
	
	
	

return 0;
}
