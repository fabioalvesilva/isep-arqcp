#include <stdio.h>
#include <string.h>
#include "asm.h"

int main( void ){

	structB s2;
	
	structB *b = &s2;

	fun1(b);
	fun2(b);
	fun3(b);
	fun4(b);
	
return 0;
}
