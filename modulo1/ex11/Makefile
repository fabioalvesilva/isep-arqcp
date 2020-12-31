# MAKE FILE

#Variaveis
NAME = main
INCLUDES = palindrome.h
SOURCES = palindrome.c ${NAME}.c
OBJFILES = palindrome.o ${NAME}.o
EXEC = main
MSG_GIT = Exercicio 11 / Modulo 1 - Incompleto

#Suffix rules
.SUFFIXES: .c .o

#How to build an object .o from a code file .c;  $<-- file name
.c.o:
	gcc -Wall -g -c $<

${EXEC}: ${OBJFILES}
	gcc -Wall -g -o ${EXEC} ${OBJFILES}
	
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
	#git config --global push default simple
	
#Atualização do GIT
git: 
	git add -A
	git commit -a -m "${MSG_GIT}"
	git pull
	git push
	
#debug
debug: ${EXE}
	ddd ${EXE} &
