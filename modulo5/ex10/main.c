#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "asm.h"

int main( void ){
	
	
	char* str = "Fabio";
	char* resultado;
	
	resultado = new_str(str);
	
	printf("RESULTADO: %s\n", resultado);
	
	free(resultado);
	
return 0;
}
