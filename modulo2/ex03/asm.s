.section .data

	.global op1
	.global op2
	
	.equ CONST, 15

.section .text 

	.global sum_v2	#void  sum(void)
	sum_v2:
	
	#prologue
	pushl %ebp		#save previous stack frame pointer
	movl %esp, %ebp		#the stack frame pointer for sum fucntion
	
	movl op1, %ecx		#place op1 in ecx
	subl $CONST, %ecx
	movl op2, %eax		#place op2 in eax
	subl $CONST, %eax
	subl %ecx, %eax		#add exc to eax. Result is in eax

	#epilogue
	movl %ebp, %esp		#restore the previous stack pointer ("clear" the stack)
	popl %ebp		#restore the previous stack frame pointer
	ret
