# MAKE FILE

#Variaveis
NAME = main
INCLUDES = test_even.h vec_sum_even.h test_even.s vec_sum_even.s
SOURCES = ${NAME}.c test_even.s vec_sum_even.s
OBJFILES = ${NAME}.o test_even.o vec_sum_even.o
EXEC = main
MSG_GIT = Exercicio 8 / Modulo 3 

#Suffix rules
.SUFFIXES: .c .o
.SUFFIXES: .s .o

#How to build an object .o from a code file .c;  $<-- file name
.c.o:
	gcc -g -Wall -c $<
	
.s.o:
	gcc -g -Wall -c $<

${EXEC}: ${OBJFILES}
	gcc -g -Wall -o ${EXEC} ${OBJFILES}
	
${OBJFILES}: ${SOURCES} ${INCLUDES}

#Execution
run: ${EXEC}
	./${EXEC}

clean: 
	rm -f ${OBJFILES} ${EXEC}
	
	
#Configuração do GIT
gitconfig:
	git config --global user.email "1181895@isep.ipp.pt"
	git config --global user.name "Fábio Silva"
	
#Atualização do GIT
git: 
	git add -A
	git commit -a -m "${MSG_GIT}"
	git pull
	git push
	
#debug
debug: ${EXEC}
	ddd ${EXEC} &
