CROSS_COMPILE = mips-openwrt-linux-
CC = gcc

SOURCE = main.c
PROJECT = main.o
OBJECT = log4c 
LDFLAGS = -L./lib/ -llog4c -lexpat
CFLAGS = -g -I./include 

$(OBJECT) : $(PROJECT)
	${CROSS_COMPILE}${CC} $^ -o $@ ${LDFLAGS}

$(PROJECT) : $(SOURCE)
	${CROSS_COMPILE}${CC} -c $^ ${CFLAGS}

clean : 
	-rm -f $(PROJECT) $(OBJECT) *.o

