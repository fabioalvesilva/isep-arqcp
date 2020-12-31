# variaveis
INCLUDES = activate_bits.h
SOURCES = main.c activate_bit.s activate_2bits.s
OBJFILES = main.o activate_bit.o activate_2bits.o
EXEC = prog_activate_2bits

#mensagem recebida por parametro na forma:
# make action msg="mensagem"
MSG = $(msg)

#Parametros de compilação (-lm for <math.h>, -m32 para compilar em 32 bits)
CP = -lm -m32

#Regras de sufixo
.SUFFIXES : .c .o
.SUFFIXES : .s .o

#como transformar um .c num .o ; $< -- nome do ficheiro
.c.o:
	gcc -g -Wall ${CP} -c $<
	
#como transformar um .s num .o ; $< -- nome do ficheiro
.s.o:
	gcc -g -Wall ${CP} -c $<
	
#fazer o programa principal
${EXEC}: ${OBJFILES}
	gcc -g ${CP} -o ${EXEC} ${OBJFILES}
	
#${OBJFILES}: ${SOURCES} ${INCLUDES}

run: ${EXEC}
	./${EXEC}

clean:
	rm -f ${OBJFILES} ${EXEC}
