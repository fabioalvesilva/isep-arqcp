#########################
## Data Section
#########################
.section .data

#define Constant
#	.equi CONST, value

#########################
## Program Section
#########################
.section .text

    .global count_even	# int count_even(short *vec, int n)

########################
## Program Name
########################
count_even:

########################           
## Prologue
########################
    pushl %ebp           # save previous stack frame pointer
    movl %esp, %ebp      # the stack frame pointer for sum function
    subl $4, %esp		 # reserves space for a local variable
    
#######################
## Calle - save
## Only if used...
#######################
	pushl %ebx
	pushl %esi
#   pushl %edi

#######################
## Stack parameters
#######################
	
	movl 8(%ebp), %ebx	#move the first parameter to %bx
	movl 12(%ebp), %esi	#move the second parameter to %esi
	movl $0, -4(%ebp)	#initial result in local variable, it is our count
	
#######################	
## Main Body...
#######################

body:

	cmpl $0, %esi
	je end
	
	movl $0, %eax		#clean the register
	movl $0, %edx
	
	movw (%ebx), %ax	#moves the value of the pointer to %ax
	movw $2, %cx		#moves the divisor to %cx
	idivw %cx			#divides the %ax to %cx
	
	
	cmpw $0, %dx		#compares if the rest is 0
	je is_even
	
	decl %esi			#decrements %esi
	addl $2, %ebx		#increments a position in the array
	
	cmpl $0, %esi		#compares if the pointer is at the end of the array
	je end 
	jmp body
	
is_even:
	
	incl -4(%ebp)		#increments the counter
	addl $2, %ebx		#increments a position in the array
	decl %esi			#decrements %esi
	
	cmpl $0, %esi		#compares if the pointer is at the end of the array
	je end 
	jmp body
	
	
#######################
## End
#######################  
end:
	
	movl -4(%ebp), %eax

#######################  
## Callee restore
#######################
#	popl %edi
	popl %esi
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
 
#######################
##DIVISION EXAMPLE
#######################
##dividend : ax
##divisor : cl
##divides %ax by %cl
##remainder in %ah
#divb %cl
