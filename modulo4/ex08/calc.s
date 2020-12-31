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

    .global calc	# int count_even(short *vec, int n)

########################
## Program Name
########################
calc:

########################           
## Prologue
########################
    pushl %ebp           # save previous stack frame pointer
    movl %esp, %ebp      # the stack frame pointer for sum function
    subl $4, %esp		 # reserves space for a local variable z
    
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
	
	movl 8(%ebp), %ebx	#move the first parameter to %ebx - a
	movl 12(%ebp), %edx	#move the second parameter to %esi - b
	movl 16(%ebp), %ecx	#move the third parameter to %ecx - c
	
	movl $0, -4(%ebp)	#initial result in local variable - z
	
#######################	
## Main Body...
#######################

body:
	
	movl (%edx), %eax
	
	subl %ebx, %eax
	movl %eax, -4(%ebp)
	
	imul -4(%ebp), %ecx
	subl $2, %ecx
	
	movl %ecx, %eax
	 
	
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
 
#######################
##DIVISION EXAMPLE
#######################

#dividend : ax
#divisor : cl
#divides %ax by %cl
#remainder in %ah
#divb %cl

#######################
##SUBTRACT
#######################

#subl $10 , % eax 	#subtract 10 to the current value of EAX; EAX =EAX -10
#subw %bx , %cx 	#subtract the value of BX to CX (16 bits ); CX=CX -BX
#subl var1 , % eax 	#subtract the 32 - bit value in var1 to EAX ; EAX =EAX - var1
#subl %ecx , % eax 	#subtract ECX to EAX ; EAX =EAX - ECX


#######################
##MULTIPLICATION
#######################

#movw $200 , %ax
#movw $2 , %cx

#imulw %ax , %cx	#multiply %ax by %cx result in %cx

#imulw $4 , %cx , %dx	#multiply 4 by %cx, result in %dx
