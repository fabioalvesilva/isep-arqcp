.section .text
	.global activate_2bits # int activate_2bits(int *ptr, int pos)
	
activate_2bits:
	# prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for our function
	pushl %esi
	
	#body of the function
	movl 8(%ebp), %esi
	movl 12(%ebp), %eax
	
	pushl %eax
	pushl %esi
	
	call activate_bit
	
	popl %esi
	popl %eax
	
	movl $31, %eax
	subl 12(%ebp), %eax
	
	pushl %eax
	pushl %esi
	
	call activate_bit
	
	popl %esi
	popl %eax
	
end:
	#epilogue
	popl %esi
	movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
	popl %ebp # restore the previous stack frame pointer
	ret
