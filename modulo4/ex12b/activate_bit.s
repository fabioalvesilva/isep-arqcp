#########################
## Data Section
#########################
.section .data

#	.extern print_result	#declara a função print_result do C
	
#define Constant
#	.equi CONST, value

#########################
## Program Section
#########################
.section .text

    .global activate_bit	# int activate_bit(int *ptr, int pos)

########################
## Program Name
########################
activate_bit:

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
	
	movl 8(%ebp), %esi	#move the first parameter to %ebx - *ptr
	movl 12(%ebp), %eax	#move the second parameter to %esi - pos
	
#	movl $0, -4(%ebp)	#initial result in local variable 
#	movl $0, -8(%ebp)	#initial result in local variable 
	
#######################	
## Main Body...
#######################

body:
	
	movl $1, %ecx

loop:
	
	cmpl $0, %eax
	je continue
	
	sall $1, %ecx
	
	decl %eax
	jmp loop
	
continue:

	movl (%esi), %edx
	movl $1, %eax
	
	orl %ecx, (%esi)
	
	cmpl (%esi), &edx
	jne end
	
	movl $0, %eax
	
	
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
