.section .data

	.global num
	

.section .text 

	.global steps 
	
steps:

	#prologue
	pushl %ebp			#save previous stack frame pointer
	movl %esp, %ebp		#the stack frame pointer for sum fucntion
	
	#clean register
	movl $0, %edx 
	movl $0, %ecx 
	movl $0, %eax 
		
	#data to eax
	movl num, %eax
	
	#multiply by 3 
	movl $3, %ecx
	imull %ecx, %eax
	
	#adds 6
	addl $6, %eax

	
	#idivl 3
	movl $3, %ecx
	idivl %ecx
	cdq 
	
	#adds 12
	addl $12, %eax
	
	#subtract num 
	movl num, %ecx
	subl %ecx, %eax
	
	
	#subtract 1 
	movl $1, %ecx
	subl %ecx, %eax
	cdq
	
		
	#epilogue
	movl %ebp, %esp		#restore the previous stack pointer ("clear" the stack)
	popl %ebp		#restore the previous stack frame pointer
	
	
	#return from the function
	ret
