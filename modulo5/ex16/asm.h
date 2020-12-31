#ifndef ASM_H
#define ASM_H

typedef struct{
	int n_students;
	unsigned char *individual_grades;
}group;


int approved_semester(group *g);

int **new_matrix(int y, int k);
void fill_matrix(int **m, int y, int k);
void print_matrix(int **m, int y, int k);


#endif
