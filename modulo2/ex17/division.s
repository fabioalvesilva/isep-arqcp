.section .data

	
	.global A
	.global B
	

.section .text 

	.global division
	
division:

	#prologue
	pushl %ebp			#save previous stack frame pointer
	movl %esp, %ebp		#the stack frame pointer for sum fucntion
	
	
	#clean registers
	movl $0, %eax		#clean the register eax
	movl $0, %edx		#clean the register edx
	movl $0, %ecx		#clean the register ecx
	
	#body of the function
	
	#(A/B)
	movl A, %eax	#move A to eax
	divl B	#divide B with eax

	
	#epilogue
	movl %ebp, %esp		#restore the previous stack pointer ("clear" the stack)
	popl %ebp		#restore the previous stack frame pointer
	
	
	#return from the function
	ret
