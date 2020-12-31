.section .data

    .global ptrvec        #pointer ptr1
    .global even
    .global num

.section .text

    .global vec_sum_even    

vec_sum_even:
             
# prologue
    pushl %ebp           # save previous stack frame pointer
    movl %esp, %ebp      # the stack frame pointer for sum function
    push %ebx		     # push %ebx

#body

	movl $0, %edx
	
	movl ptrvec, %edx	#moves the address to %esi
	movl num, %ecx		#moves content to the variable
	movl $0, %ebx
	
	cmpl $0, %ecx
	je end
	
sum_loop:
	
	movl (%edx), %eax	#moves the value of %esi to variable even
	movl %eax, even
	
	pushl %edx
	pushl %ecx
	call test_even		#calling the function
	popl %ecx
	popl %edx

	cmp $0, %eax
	je is_odd
	
	addl (%edx), %ebx	#sum the value of %esi to %ebx		
	
is_odd:
	
	addl $4, %edx		#moves to the next int in the array of integers
	loopne sum_loop
	
end:

	movl %ebx, %eax
    
# epilogue

	pop %ebx
    movl %ebp, %esp      #restore the previous stack pointer ("clear" the stack)
    popl %ebp            #restore the previous stack frame pointer
    
    ret
 
