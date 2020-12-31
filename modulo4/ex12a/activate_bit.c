int activate_bit(int *ptr, int pos) {
	
 int num = *ptr;
 int active = 1;
 
 *ptr = num | (1 << pos);
 
 if(*ptr == num){
	 active = 0;
 }

return active;

}

