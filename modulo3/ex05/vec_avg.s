.section .data

    .global num		

.section .text

    .global vec_avg    # definição da função str_copy_porto

vec_avg:
             
# prologue
    pushl %ebp           # save previous stack frame pointer
    movl %esp, %ebp      # the stack frame pointer for sum function



#body
	
	movl $0, %eax
	cmpl $0, num
	je end
	
	call vec_sum		#calling the function
	
	cdq
	movl num, %ecx
	idivl %ecx

end:
    
# epilogue
    movl %ebp, %esp      #restore the previous stack pointer ("clear" the stack)
    popl %ebp            #restore the previous stack frame pointer
    
    ret
 
