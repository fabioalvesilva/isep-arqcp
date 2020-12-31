.section .data

	.global A
	.global B
	

.section .text 

	.global isMultiple
	
isMultiple:

	#prologue
	pushl %ebp			#save previous stack frame pointer
	movl %esp, %ebp		#the stack frame pointer for sum fucntion
	
	
	#clean registers
	movl $0, %eax		#clean the register eax
	movl $0, %edx		#clean the register edx
	movl $0, %ecx		#clean the register ecx
	
	#body of the function
	
	movl B, %ecx	#move B to ecx register
	cmpl $0, %ecx
	je fim
	movl A, %eax	#move A to edx register
	divl %ecx	#div eax to ecx
	movl $0, %eax		#clean eax register
	
	cmpl %eax, %edx
	je is_multiple		#verifies if CF is activated
	
	jmp fim			#jumps to the end
	
	
is_multiple:
	movl $1, %eax	#move 1 to eax

	
fim:
	
	#epilogue
	movl %ebp, %esp		#restore the previous stack pointer ("clear" the stack)
	popl %ebp		#restore the previous stack frame pointer
	
	
	#return from the function
	ret
