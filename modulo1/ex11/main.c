#include <stdio.h>
#include "palindrome.h"

int main (void) {

	char text[]= "ANA ES TU";
	char *pointer = text;
	
	if(palindrome (pointer) == 0){
		
		printf("\nNão é palindrome\n");
		
	}else if(palindrome (pointer) == 1){
	
		printf("\nÉ palindrome\n");
	};
	
	
return 0;
}
