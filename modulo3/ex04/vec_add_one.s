.section .data

    .global ptrvec        #pointer ptr1
    .global num		

.section .text

    .global vec_add_one    # definição da função str_copy_porto

vec_add_one:
             
# prologue
    pushl %ebp           # save previous stack frame pointer
    movl %esp, %ebp      # the stack frame pointer for sum function
    pushl %esi

#body

	movl ptrvec, %esi
	movl num, %ecx
	cmpl $0, %ecx
	je end
	
increment:
	
	addl $1, (%esi)		#increments the value of %esi by one
	addl $4, %esi		#moves to the next int in the array of integers
	loopne increment	#decrements %ecx, compares to zero and jumps to the function

end:
    
# epilogue
	popl %esi
    movl %ebp, %esp      #restore the previous stack pointer ("clear" the stack)
    popl %ebp            #restore the previous stack frame pointer
    
    ret
 
