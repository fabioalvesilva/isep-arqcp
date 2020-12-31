.section .text
	.global activate_bit # int activate_bit(int *ptr, int pos)
	
activate_bit:
	# prologue
	pushl %ebp # save previous stack frame pointer
	movl %esp, %ebp # the stack frame pointer for our function
	pushl %esi
	
	#body of the function
	movl 8(%ebp), %esi
	movl 12(%ebp), %eax
	
	movl $1, %ecx
	
active_loop:
	cmpl $0, %eax
	je continue
	
	sall $1, %ecx
	
	decl %eax
	jmp active_loop
	
continue:
	movl (%esi), %edx
	movl $1, %eax
	
	orl %ecx, (%esi)
	
	cmpl (%esi), %edx
	jne end
	
	movl $0, %eax
	
end:
	#epilogue
	popl %esi
	movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
	popl %ebp # restore the previous stack frame pointer
	ret
