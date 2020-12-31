#########################
## Data Section
#########################
.section .data

#	.extern print_result	#declara a função print_result do C
	
#define Constant
#	.equi CONST, value


#typedef struct {
#	int i;	*4 bytes*
#	char c;	*1 byte*
#	int j;	*4 bytes*
#	char d;	*1 byte*
#} Student;

	.equ I_OFF, 0
	.equ C_OFF, 4
	.equ J_OFF, 8
	.equ D_OFF, 12
	
#########################
## Program Section
#########################
.section .text

    .global fill_s1	#void fill_s1(s1 *s, int vi, char vc, int vj, char vd)

########################
## Program Name
########################
fill_s1:

########################           
## Prologue
########################
    pushl %ebp           # save previous stack frame pointer
    movl %esp, %ebp      # the stack frame pointer for sum function
#   subl $4, %esp		 # reserves space for a local variable
    
#######################
## Calle - save
## Only if used...
#######################
	pushl %ebx
	pushl %esi
    pushl %edi

#######################
## Stack parameters
#######################
	
	movl 8(%ebp), %esi	#move the first parameter to %esi
	movl 12(%ebp), %eax #move the second parameter to %eax
	movb 16(%ebp), %bl	#move the third parameter to %bl
	movl 20(%ebp), %ecx	#move the fourth parameter to %ecx
	movb 24(%ebp), %bh	#move the fith parameter to %bh
	
#######################	
## Main Body...
#######################

body:
	
	#Mover primeiro parametro
	leal I_OFF(%esi, 4), %edi
	movl %eax, (%edi)
	
	#Mover primeiro parametro
	leal C_OFF(%esi, 1), %edi
	movb %bl, (%edi)

	#Mover primeiro parametro
	leal J_OFF(%esi, 4), %edi
	movl %ecx, (%edi)
	
	#Mover primeiro parametro
	leal D_OFF(%esi, 1), %edi
	movb %bh, (%edi)
	
#######################
## End
#######################  
end:

	# When we finish the copy operations, move ZERO to the end of the new string!!!
	#movl $0, (%eax)
	

#######################  
## Callee restore
#######################
	popl %edi
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





