#########################
## Data Section
#########################
.section .data

#	.extern print_result	#declara a função print_result do C
	
#define Constant
#	.equi CONST, value


#typedef struct{
#	int n_students;						*4 bytes*
#	unsigned char *individual_grades;	*4 bytes*
#}group;
	
	.equ SIZE, 8
	.equ N_OFF, 0
	.equ C_OFF, 4
	
#########################
## Program Section
#########################
.section .text

    .global approved_semester	#int approved_semester(group *g)

########################
## Program Name
########################
approved_semester:

########################           
## Prologue
########################
    pushl %ebp           # save previous stack frame pointer
    movl %esp, %ebp      # the stack frame pointer for sum function
    subl $4, %esp
    
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
#	movl 12(%ebp), %eax #move the second parameter to %eax
	
#	movl $0, -4(%ebp)	
	
#######################	
## Main Body...
#######################

	#limpa os registos
	movl $0, %ebx
	movl $0, %edx
	
	#Inicializa o counter de 8 bits
	movl $8, %ecx
	
	
	leal N_OFF(%esi, 1), %edi
	movl (%edi), %eax
	
	#Mover %eax para variavel local
	movl %eax, -4(%ebp)
	
	#limpa registo
	movl $0, %eax
	
	#Verificar se o nr de estudantes é 0
	cmp $0, -4(%ebp)
	je end
	
	leal C_OFF(%esi, 1), %edi
	
	movl (%edi), %edx
	jmp count_bits
	
counter:
	
	#Verificar se o nr de notas positivas é >= 5
	cmpl $5, %ebx
	jl next_char
	
	#Incrementa nº de alunos aprovados
	addl $1, %eax

next_char:
	
	#Verificar se o nr de estudantes é 0
	cmp $0, -4(%ebp)
	je end
	
	#Limpa o registo e inicializa novamente o contador de bits
	movl $0, %ebx
	movl $8, %ecx
	
	#Incrementa a posicao do apontador de char
	addl $1, %edi
	movb (%edi), %dl
	
	#Decrementa o nº estudantes verificado
	decl -4(%ebp)

count_bits:
	
	#Shift right
	shrb $1, %dl
	
	#Verifica carry a 1
	jc increment_counter
	loopne count_bits
	
	jmp counter
	
increment_counter:
	
	#Incrementa nr de notas positivas do aluno
	addl $1, %ebx
	loopne count_bits

	jmp counter

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





