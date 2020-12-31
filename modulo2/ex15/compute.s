.section .data

	
	.global A
	.global B
	.global C
	.global D
	

.section .text 

	.global compute
	
compute:

	#prologue
	pushl %ebp			#save previous stack frame pointer
	movl %esp, %ebp		#the stack frame pointer for sum fucntion
	
	
	#clean registers
	movl $0, %eax		#clean the register eax
	movl $0, %edx		#clean the register edx
	movl $0, %ecx		#clean the register ecx
	
	#body of the function
	
	cmpl $0, D		#if D is 0, proceed to the end
	je end
	
	#(A*B)
	movl B, %eax	#move B to eax
	mull A			#multiply A with B
	
	#((A*B)+C)
	movl C, %edx	#mov C to edx register
	addl %eax, %edx	#add (A*B) to c
	adcl $0, %edx	#add carry flag
	
	movl $0, %eax	#clean eax register
	
	#((A*B)+C)/D
	movl %edx, %eax
	movl $0, %edx
	movl D, %ecx
	cdq
	idivl %ecx		#divides edx with edx
	
	cdq
	
end:

	#epilogue
	movl %ebp, %esp		#restore the previous stack pointer ("clear" the stack)
	popl %ebp		#restore the previous stack frame pointer
	
	
	#return from the function
	ret
