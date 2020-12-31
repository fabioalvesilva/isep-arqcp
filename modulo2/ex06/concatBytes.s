.section .data

.global byte1
.global byte2
.global short
	
	

.section .text 

	.global concatBytes #
	
concatBytes:

	#prologue
	pushl %ebp		#save previous stack frame pointer
	movl %esp, %ebp		#the stack frame pointer for sum fucntion
	
	#body of the function
	movb byte1, %al			#place byte1 in al register
	movb byte2, %ah			#place byte2 in ah register

	
		
	#epilogue
	movl %ebp, %esp		#restore the previous stack pointer ("clear" the stack)
	popl %ebp		#restore the previous stack frame pointer
	
	
	#return from the function
	ret
