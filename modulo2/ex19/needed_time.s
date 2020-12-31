.section .data

	
	.global desired
	.global current
	

.section .text 

	.global needed_time
	
needed_time:

	#prologue
	pushl %ebp			#save previous stack frame pointer
	movl %esp, %ebp		#the stack frame pointer for sum fucntion
	
	
	#clean registers
	movl $0, %eax		#clean the register eax
	movl $0, %edx		#clean the register edx
	movl $0, %ecx		#clean the register ecx
	
	#body of the function
	
	movw current, %ax	#move variable to register
	movw desired, %dx	#move variable to register
	cmpw %ax, %dx		#compares both 16bits variables
	jl isLessThan		#jump if is less than
	jg isGreaterThan	#jum if is greater than
	
	movw $0, %ax		#clean ax register
	je end				#jumps to the end
	
isGreaterThan:
	#two minutes to increase each minute
	
	subw desired, %ax	#subtract register ax to variable
	imulw $-1, %ax		#makes ax positive int
	imulw $2, %ax		#multiplies two with ax
	imulw $60, %ax		#mutiplies 60 seconds with ax
	movswl %ax, %eax	#moves 16bits to 32bits register
	
	jmp end

isLessThan:
	#three minutes to decrease each minute
	
	subw desired, %ax	#subtract variable to register
	imulw $3, %ax		#multiply 3 with the register
	imulw $60, %ax		#multiplu 60 seconds with register
	movswl %ax, %eax	#moves 16bits to 32bits register
	
	
	
	
end: 	
	
	#epilogue
	movl %ebp, %esp		#restore the previous stack pointer ("clear" the stack)
	popl %ebp		#restore the previous stack frame pointer
	
	
	#return from the function
	ret
