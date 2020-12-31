void copy_vec (int *vec1, int *vec2, int n){

	//Inicialização do i;
	int i;

	//For para copiar N elementos do vector 1 para o vector 2;
	for (i = 0; i<n; i++){
		
		//Copiamos o valor da vecX[i] para o vecY[i] através dos seus apontadores;
		*vec2 = *vec1;
		
		//Avançamos uma posição para a direita no vector 1 e no vector 2;
		vec2++;
		vec1++;
			 
	}
	
}
