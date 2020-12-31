#include <stdio.h>
#include "new_salary.h"

int code = 10;
int currentSalary = 200;

int r = 0;

int main(void) {
	

	r = new_salary();
	
	printf("New Salary = %d\n", r);
	
	
return 0;
}
