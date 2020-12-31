.section .data

	.global s
	

.section .text 

	.global swapBytes	#void  swapBytes()
	
swapBytes:

	#prologue
	pushl %ebp		#save previous stack frame pointer
	movl %esp, %ebp		#the stack frame pointer for sum fucntion
	
	#body of the function
	movw s, %cx			#place shrt in cx
	movb %cl, %ah		#place less significant byte in ah
	movb %ch, %al		#place the most signficante byte in al
	
		
	#epilogue
	movl %ebp, %esp		#restore the previous stack pointer ("clear" the stack)
	popl %ebp		#restore the previous stack frame pointer
	
	#return from the function
	ret
