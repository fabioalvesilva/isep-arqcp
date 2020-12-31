#include <stdio.h>
#include <string.h>

int palindrome (char *str){
	
	int j = 0;
	int k = strlen(str);
	char tmp[k];
	
	//Verificação se é NULL ou vazio
	if ((str == NULL) || (*str == 0)){
		return 0;
	};
	
	
	while ((*str != '\0')){
		
		if((*str >= ' ' && *str <= '/') || (*str >= ':' && *str <= '@') || (*str >= '[' && *str <= '`') || (*str == '{')){
			str++;
		};
		
		tmp[j]= *str;
		
		printf("\nj=%d", tmp[j]);
		
		str++;
		j++;
		
	};
	
	/*int f = j-1;
	printf("\nj = %d", j);
	
	while (f > i){
		
		printf("\ntemp[i] = %c", tmp[i]);
		printf("\ntemp[j] = %c", tmp[j]);
		
		if (tmp[i] != tmp[f]) {
			return 0;
		}
		
		i++;
		f--;
	}*/
	
	return 1;
}
