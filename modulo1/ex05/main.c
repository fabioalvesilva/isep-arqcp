#include <stdio.h>
#include "power_ref.h"

int main (void){

	int numberX = 21;
	int numberY = 4;
	
	int *pointer = &numberX;
	
	power_ref(pointer, numberY);
	
	return 0;
}
