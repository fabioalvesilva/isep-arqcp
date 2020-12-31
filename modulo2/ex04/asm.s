.section .data

op3:
	.int 0
	
op4:
	.int 0
	
	.global op1
	.global op2
	.global op3
	.global op4
	

.section .text 

	.global sum_v3	#void  sum(void)
	sum_v3:
	
	#prologue
	pushl %ebp		#save previous stack frame pointer
	movl %esp, %ebp		#the stack frame pointer for sum fucntion
	
	#body of the function
	movl op4, %ecx		#place op4 in eax
	movl op3, %eax		#place op3 in ebx
	addl %eax, %ecx		#add ebx to eax. Result is in ecx
	movl op2, %eax		#place op2 in ecx
	subl %eax, %ecx		#sub eax to ecx. Result is in ecx
	movl op1, %eax		#place op1 in edx
	addl %ecx, %eax		#add exc to eax. Result is in eax


	#epilogue
	movl %ebp, %esp		#restore the previous stack pointer ("clear" the stack)
	popl %ebp		#restore the previous stack frame pointer
	
	#return from the function
	ret
