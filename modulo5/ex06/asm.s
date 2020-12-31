#########################
## Data Section
#########################
.section .data

#	.extern print_result	#declara a função print_result do C
	
#define Constant
#	.equi CONST, value


#typedef struct {
#	char age;			*1 byte*
#	short number;		*2 bytes*
#	int grades[10];		*40 bytes*
#	char name[80];		*80 bytes*
#	char address[120];	*120 bytes*
#} Student;

	.equ ST_SIZE, 243
	.equ AGE_OFF, 0
	.equ NUMBER_OFF, 2
	.equ GRADES_OFF, 4
	.equ NAME_OFF, 44
	.equ ADDRESS_OFF, 124
	
#########################
## Program Section
#########################
.section .text

    .global locate_greater	#int locate_greater(Student *s, int minimum, int *new_grades)

########################
## Program Name
########################
locate_greater:

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
    pushl %edi

#######################
## Stack parameters
#######################
	
	movl 8(%ebp), %esi	#move the first parameter to %esi
	movl 12(%ebp), %ebx #move the second parameter to %ebx
	movl 16(%ebp), %edi	#move the third parameter to %edi
	
	movl $0, -4(%ebp)	#Initial result in local variable, it is our count
	
#######################	
## Main Body...
#######################

body:
	
	movl $10, %ecx
	
	#Mover para %eax
	leal GRADES_OFF(%esi, 1), %edx
	
loop:
	
	cmpl %ebx, (%edx)
	jg greater_equal
	
	jmp increment

greater_equal:

	# Se for maior, copia para o array apontado por %edi
	movl (%edx), %eax
	
	movl %eax, (%edi)
	
	# Increment our counter
	incl -4(%ebp)
	
	addl $4, %edi

	
	jmp increment

	
increment:

	# Increment both pointers and go back to the start (loop)
	addl $4, %edx
	
	loopne loop
	
	
#######################
## End
#######################  
end:

	# When we finish the copy operations, move ZERO to the end of the new string!!!
	#movl $0, (%eax)
	
	movl -4(%ebp), %eax

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





