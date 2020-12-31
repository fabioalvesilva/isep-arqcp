#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "asm.h"

int main( void ){
	
	
	group a;
	group *b = &a;
	
	int n = 3;
	unsigned char grades []= {0b10000000,0b11111000,0};
	
	
	b->n_students=n;
	b->individual_grades=grades; 
	 
	int resultado = approved_semester(b);
	
	printf("\nALUNOS APROVADOS: %d\n", resultado);
	
	
return 0;
}
