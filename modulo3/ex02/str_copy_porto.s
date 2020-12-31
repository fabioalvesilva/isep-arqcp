.section .data

    .global ptr1        #pointer ptr1
    .global ptr2		#pointer ptr2

.section .text

    .global str_copy_porto    # definição da função str_copy_porto

str_copy_porto:             # inicio da função str_copy_porto

# prologue
    pushl %ebp           # save previous stack frame pointer
    movl %esp, %ebp      # the stack frame pointer for sum function
    pushl %esi
    pushl %edi

#body

char_copy:
	movl ptr1, %esi
	movl ptr2, %edi
	
begin:
	movb (%esi), %al
	cmpb $118, %al
	je substitute
	
continue:	
	movb %al, (%edi)
	cmpb $0, %al
	je end

	incl %esi
	incl %edi
	jmp begin
	
substitute:
	movb $98, %al
	jmp continue

end:

    
# epilogue
	pop %edi
	pop %esi
    movl %ebp, %esp      #restore the previous stack pointer ("clear" the stack)
    popl %ebp            #restore the previous stack frame pointer
    
    ret
 
