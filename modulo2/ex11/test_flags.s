.section .data

	.global op1
	.global op2
	

.section .text 

	.global test_flags 
	
test_flags:

	#prologue
	pushl %ebp			#save previous stack frame pointer
	movl %esp, %ebp		#the stack frame pointer for sum fucntion
	
	
	#clean registers
	movl $0, %eax		#clean the register eax
	movl $0, %edx		#clean the register edx
	movl $0, %ecx		#clean the register ecx
	
	#body of the function
	movl op1, %edx	#move op1 to edx register
	movl op2, %ecx	#move op2 to ecx register
	add %edx, %ecx	#add edx to ecx
	
	jc output_with_carry		#verifies if CF is activated
	jo output_with_overflow		#verifies if OF is activated
	
	jmp fim			#jumps to the end
	
	
output_with_carry:
	movl $1, %eax	#move 1 to eax
	jmp fim			#jums to the end

output_with_overflow:
	movl $1, %eax	#move 1 to eax
	
fim:
	
	cdq
	
		
	#epilogue
	movl %ebp, %esp		#restore the previous stack pointer ("clear" the stack)
	popl %ebp		#restore the previous stack frame pointer
	
	
	#return from the function
	ret
