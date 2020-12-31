.section .data

    .global ptr1        #pointer ptr1

.section .text

    .global zero_count     # definição da função zero_count

zero_count:             # inicio da função zero_count

# prologue
    pushl %ebp           # save previous stack frame pointer
    movl %esp, %ebp      # the stack frame pointer for sum function

    movl $0, %eax		#clean register

    movl ptr1, %ecx;    #moving adress stored in ptr to ecx

cmp_char:

    movb (%ecx), %dl      #moving char to dl
    cmpb $48, %dl         #comparing char to zero        
    je add_count     #if zero found jump        
    
    cmpb $0, %dl          #if end of string jump to end     
    je end
    
continue_cmp:
    incl %ecx               #move to next char
    jmp cmp_char     #repeat loop

 

add_count:
    incl %eax            #increment pointer 
    jmp continue_cmp
    
    end:
    
# epilogue
    movl %ebp, %esp      #restore the previous stack pointer ("clear" the stack)
    popl %ebp            #restore the previous stack frame pointer
    
    ret
 
