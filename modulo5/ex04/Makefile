# MAKE FILE

#Variaveis
NAME = main
INCLUDES = asm.h
SOURCES = ${NAME}.c update_address.s fill_stundent.c
OBJFILES = ${NAME}.o update_address.o fill_stundent.o
EXEC = main
MSG_GIT = Exercicio  / Modulo 5

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
