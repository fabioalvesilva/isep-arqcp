#########################
## Data Section
#########################
.section .data

#########################
## Program Section
#########################
.section .text

    .global greatest	# int greatest(int a, int b, int c)

########################
## Program Name
########################
greatest:

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

	movl 8(%ebp), %eax	#move the first parameter to %ecx
	movl 12(%ebp), %ecx
	movl 16(%ebp), %edx
	
#######################	
## Main Body...
#######################

	cmpl %eax, %ecx
	jl greater
	
	movl %ecx, %eax
	
greater:
	
	cmpl %eax, %edx
	jl end
	
	movl %edx, %eax

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
 
