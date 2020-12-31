#########################
## Data Section
#########################
.section .data

#########################
## Program Section
#########################
.section .text

    .global inc_and_square	# int inc_and_square(int *v1, int v2)

########################
## Program Name
########################
inc_and_square:

########################           
## Prologue
########################
    pushl %ebp           # save previous stack frame pointer
    movl %esp, %ebp      # the stack frame pointer for sum function
    
#######################
## Calle - save
## Only if used...
#######################
#	pushl %ebx
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
	
	addl $1, (%edx)	#increases by one the value pointed by %edx
	
	movl %ecx, %eax	#moves the value %ecx to %eax
	
	imul %ecx, %eax	#does the square of %ecx value
	
#######################
## End
#######################  
end:


#######################  
## Callee restore
#######################
#	popl %edi
#	popl %esi
#	popl %ebx

#######################  
## Epilogue
#######################
    movl %ebp, %esp      #restore the previous stack pointer ("clear" the stack)
    popl %ebp            #restore the previous stack frame pointer
    
#######################  
## Return
#######################
    ret
 
