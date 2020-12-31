#########################
## Data Section
#########################
.section .data

#########################
## Program Section
#########################
.section .text

    .global cube		# int cube(int x)

########################
## Program Name
########################
cube:

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
	
#######################	
## Main Body...
#######################
	
	movl $2, %ecx
	movl %eax, %edx
	
loop:
	imull %edx, %eax
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
 
