#########################
## Data Section
#########################
.section .data

#########################
## Program Section
#########################
.section .text

    .global sum_n		# int sum_n(int n)

########################
## Program Name
########################
sum_n:

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

	movl 8(%ebp), %ecx	#move the first parameter to %ecx
	
#######################	
## Main Body...
#######################

	movl $0, %eax
	
	cmpl $0, %ecx
	jl end
	
loop:
	addl %ecx, %eax
	loopne loop

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
 
