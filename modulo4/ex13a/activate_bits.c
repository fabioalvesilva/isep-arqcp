int activate_bits(int a, int left, int right) {
	
	left = 31 - left;
	
	int i;
	for (i = 0; i < left; i++) {
		a = a | (0x80000000 >> i);
	}
	
	for (i = 0; i < right; i++) {
		a = a | (1 << i);
	}
	
	return a;

}

