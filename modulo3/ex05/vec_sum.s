.section .data

    .global ptrvec        #pointer ptr1
    .global num		

.section .text

    .global vec_sum    # definição da função str_copy_porto

vec_sum:
             
# prologue
    pushl %ebp           # save previous stack frame pointer
    movl %esp, %ebp      # the stack frame pointer for sum function
    pushl %esi

#body

	movl ptrvec, %esi
	movl num, %ecx
	movl $0, %eax
	cmpl $0, %ecx
	je end
	
sum_loop:
	
	addl (%esi), %eax	#increments the value of %esi by one
	addl $4, %esi		#moves to the next int in the array of integers
	loopne sum_loop		#decrements %ecx, compares to zero and jumps to the function

end:
    
# epilogue
	popl %esi
    movl %ebp, %esp      #restore the previous stack pointer ("clear" the stack)
    popl %ebp            #restore the previous stack frame pointer
    
    ret
 
