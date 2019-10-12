#makefile program

CFLAGS= -g

life: life.o FindNeighbors.o
	gcc $(CFLAGS) -Wall life.o FindNeighbors.o -o life
	
life.o: life.c life.h
	gcc $(CFLAGS) -Wall -c life.c -o life.o
	
FindNeighbors.o: FindNeighbors.c life.h
	gcc $(CFLAGS) -Wall -c FindNeighbors.c -o FindNeighbors.o
	
clean:
	rm -f life.o FindNeighbors.o life

 all: life