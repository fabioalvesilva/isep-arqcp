#include <stdio.h>
#include <string.h>
#include "asm.h"

int main( void ){

	Student s1;
	
	Student *s = &s1;
	
	int grades[]={1,2,3,4,5,6,7,8,9,10};
	int *gr = grades;
	
	s1.age = 23;
	s1.number=27;

	strcpy(s1.name, "Fabio");
	strcpy(s1.address, "Espinho");
	
	update_grades(s, gr);
	
	int greater_grades[10];
	
	int *g = greater_grades;
	
	
	
	int res = locate_greater(s, 5, g);
	
	printf("Resultado = %d", res);
	

return 0;
}
