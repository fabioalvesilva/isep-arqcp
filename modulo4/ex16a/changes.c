#include <stdio.h>

void changes (int *ptr){
	
// val	1111 1111
// temp	0000 1111
// tmp	1111 0000

	 //unsigned char temp = (val[2]>> 4); //0000 1111
	 
	 //temp = ~temp;						//1111 0000
	 
//	 val[2]								//1111 1111
	 

//unsigned char *p =(unsigned char)(ptr);
//unsigned  char *p;
//p = (*ptr);


 //char c = *(p+3);
 //printf("%d  c \n", c);
 
 //unsigned int *d = (*ptr >> (8 * 2));
 
 unsigned char val[4];  
 int i =0;
 for (i = 0; i < 4; i++ ) {
	val[i] = (unsigned char)(*ptr >>(8 * i));
	printf("%x  val \n", val[i]);
 }


	 char lsb = (val[2] );
	 printf("%x  temp a\n", lsb);
	 
	 
 if (val[2] > 127) {
	 
	 unsigned char temp = (val[2]>> 4); //0000 1111
	 
	 temp = ~temp;						//1111 0000
	 
	 printf("%x  temp a\n", temp);
	 temp = 0b00000000;
	 printf("%x  temp a\n", temp);
	 unsigned char tmp = val[2] << 4; // 1111 1111
	 val[2] = (temp<<4) + tmp; 		 //  0000 1111
	 printf("%x  concat a\n", val[2]);	
  }
  
  
  
  //concatenate chars to int again
 for ( i = 0; i < 4; i++ ) {
	  *ptr << 8;   
		*ptr += val[i];
}  
  
  printf("%d  ptr \n", *ptr);
  
 //unsigned char temp = 0
/*
	printf("%d  b \n", b);
 unsigned char a = 
 unsigned char value = ~b;
 
 unsigned char mask = 0b11110000;
 unsigned char temp = 0;
 
 printf("%d  value \n", value);
 
 temp = (value & mask);
 

 
 for (i = 0; i < 8; i++) {
      printf("%d", !!((temp << i) & 0x80));
  }
  printf("\n");
  printf("%d  3 time \n", *ptr);*/

}


