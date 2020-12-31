.section .data

	.global A
	.global B
	.global C
	.global D
	

.section .text 

	.global sum_and_subtract 
	
sum_and_subtract:

	#prologue
	pushl %ebp			#save previous stack frame pointer
	movl %esp, %ebp		#the stack frame pointer for sum fucntion
	
	
	#clean registers
	movl $0, %eax		#clean the register eax
	movl $0, %edx		#clean the register edx
	movl $9, %ecx		#clean the register ecx
	
	#body of the function
	
	#(C+A) SUM
	movsbl A, %edx	#move 8bits variable A to the 32bits register edx
	movl C, %eax	#move variable C to eax
	add %edx, %eax	#add edx to eax
	movl $0, %edx	#clean edx
	adcl $0, %edx	#add carry flag to edx
	
	#(C+A)-D SUBTRACT			
	movl D, %ecx	#move variable D to ecx
	subl %ecx, %eax	#subtract ecx to eax
	movl $0, %ecx	#clean ecx register
	
	#(C+A)-D+B 	SUM
	movswl B, %ecx	#move 16bits variable B to the 32bits register ecx
	addl %ecx, %eax	#add ecx to eax
	
	cdq
	
		
	#epilogue
	movl %ebp, %esp		#restore the previous stack pointer ("clear" the stack)
	popl %ebp		#restore the previous stack frame pointer
	
	
	#return from the function
	ret
