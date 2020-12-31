.section .data

    .global even		

.section .text

    .global test_even    # definição da função str_copy_porto

test_even:
             
# prologue
    pushl %ebp           # save previous stack frame pointer
    movl %esp, %ebp      # the stack frame pointer for sum function


#body
	
	movl $0, %edx
	
	cdq
	movl even, %eax		#moves variable to %eax
	movl $2, %ecx		#moves divisor to %ecx
	idivl %ecx			#divides %eax by %ecx
	
	cmpl $0, %edx		#compares if the remainder is 0
	je is_even
	
	movl $0, %eax		
	jmp end
	
is_even:
	movl $1, %eax

end:
    
    
# epilogue
	
    movl %ebp, %esp      #restore the previous stack pointer ("clear" the stack)
    popl %ebp            #restore the previous stack frame pointer
    
    ret
 
