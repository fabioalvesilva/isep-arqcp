#########################
## Data Section
#########################
.section .data

	.extern print_result	#declara a função print_result do C
	
#define Constant
#	.equi CONST, value

#########################
## Program Section
#########################
.section .text

    .global calculate	# int calculate(int a, int b)

########################
## Program Name
########################
calculate:

########################           
## Prologue
########################
    pushl %ebp           # save previous stack frame pointer
    movl %esp, %ebp      # the stack frame pointer for sum function
    subl $4, %esp		 # reserves space for a local variable sum
    subl $8, %esp		 # reserves space for a local variable product
    
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
	
	movl 8(%ebp), %ecx	#move the first parameter to %ebx - a
	movl 12(%ebp), %edx	#move the second parameter to %esi - b
	
	movl $0, -4(%ebp)	#initial result in local variable - sum
	movl $0, -8(%ebp)	#initial result in local variable - product
	
#######################	
## Main Body...
#######################

body:
	
	addl %ecx, %edx
	movl %edx, -4(%ebp)
	
	movl 12(%ebp), %edx
	
	imul %ecx, %edx
	movl %edx, -8(%ebp)


	pushl -4(%ebp)
	pushl 12(%ebp)
	pushl 8(%ebp)
	pushl $43
	call print_result
	
	pushl -8(%ebp)
	pushl 12(%ebp)
	pushl 8(%ebp)
	pushl $42
	call print_result
	
	
	movl -4(%ebp), %eax
	subl -8(%ebp), %eax
	
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


########################
##CALL FUNCTION WITH PARAMETERS
########################

#pushl arg4
#pushl arg3
#pushl arg2
#pushl arg1
#call  printSomething
