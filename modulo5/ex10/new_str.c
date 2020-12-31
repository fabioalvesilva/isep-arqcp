#include <stdio.h>
#include <string.h>
#include <stdlib.h>

char* new_str(char str[80]){
	
	int size = strlen(str);
	
	char* ptr_char;
	
	ptr_char = (char*) malloc(size * sizeof(char));
	
	int i=0;
	
	for (i=0; i< size; i++){
		
		ptr_char[i] = str[i];
	}
	
	return ptr_char;
}

