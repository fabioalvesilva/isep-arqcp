.section .data

	
	.global code
	.global currentSalary
	

.section .text 

	.global new_salary
	
new_salary:

	#prologue
	pushl %ebp			#save previous stack frame pointer
	movl %esp, %ebp		#the stack frame pointer for sum fucntion
	
	
	#clean registers
	movl $0, %eax		#clean the register eax
	movl $0, %edx		#clean the register edx
	movl $0, %ecx		#clean the register ecx
	
	#body of the function
	
	movl currentSalary, %eax
	
	cmp $10, code
	je cod_10
	
	cmp $11, code
	je cod_11
	
	cmp $12, code
	je cod_12
	
	addl $100, %eax
	jmp end
	
cod_10:
	addl $300, %eax
	jmp end

cod_11:
	addl $250, %eax
	jmp end

cod_12:
	addl $150, %eax
	jmp end
	
end: 	
	
	#epilogue
	movl %ebp, %esp		#restore the previous stack pointer ("clear" the stack)
	popl %ebp		#restore the previous stack frame pointer
	
	
	#return from the function
	ret
