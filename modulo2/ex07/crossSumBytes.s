.section .data

.global s1
.global s2
	

.section .text 

	.global crossSumBytes 
	
crossSumBytes:

	#prologue
	pushl %ebp		#save previous stack frame pointer
	movl %esp, %ebp		#the stack frame pointer for sum fucntion
	
	#body of the function
	movw s1, %cx			#place byte1 in al register
	movw s2, %dx			#place byte2 in ah register
	addb %dl, %ch
	addb %dh, %cl
	movw %cx, %ax
	
		
	#epilogue
	movl %ebp, %esp		#restore the previous stack pointer ("clear" the stack)
	popl %ebp		#restore the previous stack frame pointer
	
	
	#return from the function
	ret
