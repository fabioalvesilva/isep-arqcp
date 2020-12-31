# MAKE FILE

#Variaveis
NAME = main
INCLUDES = sum_and_subtract.h sum_and_subtract.s
SOURCES = ${NAME}.c sum_and_subtract.s
OBJFILES = ${NAME}.o sum_and_subtract.o
EXEC = main
MSG_GIT = Exercicio 9 / Modulo 2 - Resolvido /TESTES OK

#Suffix rules
.SUFFIXES: .c .o
.SUFFIXES: .s .omake

#How to build an object .o from a code file .c;  $<-- file name
.c.o:
	gcc -g -Wall -c $<
	
.s .o:
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
	git config --global user.email "1171602@isep.ipp.pt"
	git config --global user.name "Rui Marinho"
	#git config --global push default simple
	
#Atualização do GIT
git: 
	git add -A
	git commit -a -m "${MSG_GIT}"
	git pull
	git push
	
#debug
debug: ${EXEC}
	ddd ${EXEC} &
