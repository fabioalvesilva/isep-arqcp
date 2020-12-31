.section .data

base:
	.int 10
	
height:
	.int 10
	
	.global base
	.global height
	

.section .text 

	.global getArea
	
getArea:

	#prologue
	pushl %ebp			#save previous stack frame pointer
	movl %esp, %ebp		#the stack frame pointer for sum fucntion
	
	
	#clean registers
	movl $0, %eax		#clean the register eax
	movl $0, %edx		#clean the register edx
	movl $0, %ecx		#clean the register ecx
	
	#body of the function
	
	#MULTIPLICATION
	movl height, %eax	#move variable to eax, operand2
	mull base			#multiply base to eax, result is in edx
	
	#DIVISION
	movl $2, %ecx		#move dividend to register
	divl %ecx			
	
	
	#epilogue
	movl %ebp, %esp		#restore the previous stack pointer ("clear" the stack)
	popl %ebp		#restore the previous stack frame pointer
	
	
	#return from the function
	ret
