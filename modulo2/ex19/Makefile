# MAKE FILE

#Variaveis
NAME = main
INCLUDES = needed_time.h needed_time.s
SOURCES = ${NAME}.c needed_time.s
OBJFILES = ${NAME}.o needed_time.o
EXEC = main
MSG_GIT = Exercicio 15 / Modulo 2 - Não Resolvido

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
