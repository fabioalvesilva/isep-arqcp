.section .data

	
	.global num
	

.section .text 

	.global check_num
	
check_num:

	#prologue
	pushl %ebp			#save previous stack frame pointer
	movl %esp, %ebp		#the stack frame pointer for sum fucntion
	
	
	#clean registers
	movl $0, %eax		#clean the register eax
	movl $0, %edx		#clean the register edx
	movl $0, %ecx		#clean the register ecx
	
	#body of the function
	
	cmp num, %eax		#compare variabel with register
	jl even_positive	#jump if num is negative
	jg even_negative	#jump if num is positive
	
even_positive:
	
	movl num, %eax		#move num to eax
	movl $2, %ecx		#move 2 to ecx
	divl %ecx			#divide ecx with eax
	
	cmp $0, %edx		#compare if rest of the division is different than 0
	jg odd_positive
	
	movl $0, %eax		#move 0 to eax
	movb $3, %al		#move 3 to al
	
	jmp end
	
even_negative:
	
	movl num, %eax		#move num to eax
	movl $2, %ecx		#move 2 to ecx
	idivl %ecx			#divide ecx with eax
	
	cmp $0, %edx
	jg odd_negative
	
	movl $0, %eax
	movb $1, %al
	
	jmp end

odd_positive:

	movl $0, %eax
	movb $4, %al
	
	jmp end
	
odd_negative:

	movl $0, %eax
	movb $2, %al
	
	jmp end

	
end: 	
	
	#epilogue
	movl %ebp, %esp		#restore the previous stack pointer ("clear" the stack)
	popl %ebp		#restore the previous stack frame pointer
	
	
	#return from the function
	ret
