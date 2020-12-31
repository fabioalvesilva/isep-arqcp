
int count_bits_zero(int x) {
	
 int i;
 int num_zeros = 0;
 int temp;
 
 for (i = 31; i >= 0; i--){
	 	 
	 temp = x >> i;
	 
	 if (temp & 1) {
		
	 }else{
		 num_zeros++;
	 } 
 }

	
return num_zeros;
}

