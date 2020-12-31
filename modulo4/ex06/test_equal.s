#########################
## Data Section
#########################
.section .data

#########################
## Program Section
#########################
.section .text

    .global test_equal	# int test_equal(char *a, char *b)

########################
## Program Name
########################
test_equal:

########################           
## Prologue
########################
    pushl %ebp           # save previous stack frame pointer
    movl %esp, %ebp      # the stack frame pointer for sum function
    
#######################
## Calle - save
## Only if used...
#######################
	pushl %ebx
#	pushl %esi
#   pushl %edi

#######################
## Stack parameters
#######################

	movl 8(%ebp), %edx	#move the first parameter to %eax
	movl 12(%ebp), %ecx	#move the second parameter to %ecx
	
#######################	
## Main Body...
#######################
	
	movl $0, %eax
	
body:
	
	movb (%edx), %bl	#moves the value of the pointer to %bl
	movb (%ecx), %bh	#moves the value of the pointer to %bh
	
	subb %bl, %bh		
	JZ is_equal
	
	movl $0, %eax		#moves 0 to %eax
	
	jmp end
	
is_equal:
	
	movl $1, %eax		#moves 1 to %eax
	addl $1, %edx		#increments a position in the array
	addl $1, %ecx		#increments a position in the array
	
	cmpb $0, (%edx)
	je end
	cmpb $0, (%ecx)
	je end

	jmp body
	
#######################
## End
#######################  
end:


#######################  
## Callee restore
#######################
#	popl %edi
#	popl %esi
	popl %ebx

#######################  
## Epilogue
#######################
    movl %ebp, %esp      #restore the previous stack pointer ("clear" the stack)
    popl %ebp            #restore the previous stack frame pointer
    
#######################  
## Return
#######################
    ret
 
