CC = gcc
CFLAGS = -Wall -g -I/usr/include/GL -I/chemin/vers/BmpLib -I/chemin/vers/ESLib
LDFLAGS = -lm -lglut -lGL -lX11

EXEC = demineur
OBJS = main.o demineur.o

all: $(EXEC)

$(EXEC): $(OBJS) libisentlib.a
	$(CC) $(OBJS) -o $(EXEC) libisentlib.a $(LDFLAGS)

main.o: main.c demineur.h
	$(CC) $(CFLAGS) -c main.c

demineur.o: demineur.c demineur.h
	$(CC) $(CFLAGS) -c demineur.c

clean:
	rm -f *.o $(EXEC)

deepclean: clean
	rm -f libisentlib.a

