
void upper1(char *str){
	//str ++;
	int i = 0;
	while (str[i] != 0){
		if (str[i] >= 'a' && str[i] <= 'z'){
			str[i] = str[i] - ' ';
		}	
		i++;
	}
}
