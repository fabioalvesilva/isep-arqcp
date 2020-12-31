#ifndef ASM_H
#define ASM_H

typedef union{
	int a;
	char b;
	short c;
	long int d;
}UnionB;

typedef struct{
	short int a[3];
	char b;
	long long int c;
	int d;
	UnionB ub;
	char e;
}StructA;





char return_unionB_b(StructA **matrix, int i, int j);



StructA **new_matrix(int y, int k);
void fill_matrix(int **m, int y, int k);
void print_matrix(int **m, int y, int k);


#endif
