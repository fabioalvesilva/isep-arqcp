#########################
## Data Section
#########################
.section .data

#	.extern print_result	#declara a função print_result do C
	
#define Constant
#	.equi CONST, value


#typedef struct {
#	short w[3];	*6 bytes*
#	int j;		*4 bytes*
#	char c[3];	*3 bytes*
#} Student;

	.equ W_OFF, 0
	.equ J_OFF, 8
	.equ C_OFF, 12
	
#########################
## Program Section
#########################
.section .text

    .global fill_s2	#void fill_s2(s2 *s, short vw[3], int vj, char vc[3])

########################
## Program Name
########################
fill_s2:

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
	pushl %ebx
	pushl %esi
    pushl %edi

#######################
## Stack parameters
#######################
	
	movl 8(%ebp), %esi	#move the first parameter to %esi
	movl 12(%ebp), %eax #move the second parameter to %ax
	
#	movl $0, -4(%ebp)	
	
#######################	
## Main Body...
#######################

	#Iniciar contador
	movl $3, %ecx
	
	#Copia do primeiro parametro
	leal W_OFF(%esi, 1), %edi

body:

	movl $0, %edx
	
	movw (%eax), %dx
	movw %dx, (%edi)
	
loop_short:
	
	addl $2, %eax
	addl $2, %edi
	
	loopne body


continue:

	#Copia do segundo parametro
	leal J_OFF(%esi, 1), %edi
	
	movl 16(%ebp), %edx	#move the third parameter to %ebx
	
	movl %edx, (%edi)

	#Iniciar contador
	movl $3, %ecx
	
	#Copia do terceiro parametro
	leal C_OFF(%esi, 1), %edi
	
	movl 20(%ebp), %eax		#move the fourth parameter to %eax
	
loop_char:
	
	movl $0, %edx
	
	movb (%eax), %dl
	movb %dl, (%edi)
	
	addl $1, %eax
	addl $1, %edi
	
	loopne loop_char

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





