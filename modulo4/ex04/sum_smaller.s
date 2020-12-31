#########################
## Data Section
#########################
.section .data

#########################
## Program Section
#########################
.section .text

    .global sum_smaller	# int sum_smaller(int num1, int num2, int *smaller)

########################
## Program Name
########################
sum_smaller:

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

	movl 8(%ebp), %eax	#move the first parameter to %eax
	movl 12(%ebp), %ecx	#move the second parameter to %ecx
	movl 16(%ebp), %edx #move the third parameter to %edx
	
#######################	
## Main Body...
#######################
	
	cmpl %eax, %ecx
	jl greater
	
	movl %eax, (%edx)
	addl %ecx, %eax
	jmp end
	
greater:
	
	movl %ecx, (%edx)
	addl %ecx, %eax
	
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
 
