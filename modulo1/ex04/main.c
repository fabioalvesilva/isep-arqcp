#include <stdio.h>
#include "upper1.h"



// Implement a function void upper1(char *str) that, given the address of a string, replaces all
// lowercase letters by their uppercase counterpart. Your function should not use other functions
// available in the C standard library. 

int main (void){
	char arr[] = {'c','A','b','z', 'Z', '!', '0', '\0'};
	upper1(arr);
	
	return 0;
}
