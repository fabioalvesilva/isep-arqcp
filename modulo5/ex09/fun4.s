#########################
## Data Section
#########################
.section .data

#	.extern print_result	#declara a função print_result do C
	
#define Constant
#	.equi CONST, value


#typedef struct {
#	short x;		*2 bytes*
#	int y;			*4 bytes*
#} structA;


#typedef struct {
#	structA a;		*6 bytes*
#	structA *b;		*4 bytes*
#	int x;			*4 bytes*
#	char c;			*1 byte*
#	int y;			*4 bytes*
#	char e[3];		*3 bytes*
#	short z;		*2 bytes*
#} structB;

	.equ A_SIZE, 6
	.equ B_SIZE, 24
	
#ESTRUTURA A	
	.equ X_OFF, 0
	.equ Y_OFF, 4
	
#ESTRUTURA B	
	.equ A_OFF, 0
	.equ B_OFF, 8
	.equ X1_OFF, 12
	.equ C_OFF, 16
	.equ Y1_OFF, 20
	.equ E_OFF, 24
	.equ Z_OFF, 28
	
#########################
## Program Section
#########################
.section .text

    .global fun4	#void fill_s2(s2 *s, short vw[3], int vj, char vc[3])

########################
## Program Name
########################
fun4:

########################           
## Prologue
########################
    pushl %ebp           # save previous stack frame pointer
    movl %esp, %ebp      # the stack frame pointer for sum function
#   subl $4, %esp
    
#######################
## Calle - save
## Only if used...
#######################
#	pushl %ebx
	pushl %esi
    pushl %edi

#######################
## Stack parameters
#######################
	
	movl 8(%ebp), %esi	#move the first parameter to %esi
#	movl 12(%ebp), %eax #move the second parameter to %ax
	
#	movl $0, -4(%ebp)	
	
#######################	
## Main Body...
#######################

	movl $0, %eax
	movl $0, %edx
	
	#Copia do primeiro parametro
	leal B_OFF(%esi, 1), %edi
	
body:
	
	movl(%edi), %eax
	
#	movl (%ecx), %eax


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





