#include <stdio.h>
#include "copy_vec.h"

int main (){
	
	//Declaração dos dois vectores;
	int vecX[5] = {1,1,1,1,1};
	int vecY[5] = {0,2,0,2,0};
	int i;
	
	//Inicialização dos apontadores para os respectivos vectores;
	int *vec1 = vecX;
	int *vec2 = vecY;
	
	//Inicialização do N;
	int n = 2;
	
	//Chamada da função;
	copy_vec (vec1, vec2, n);
	
	//Impressão vec
	
	for(i = 0; i<5; i++){
		printf("%d\n", vecY[i]);
	}

return 0;

}
