#makefile program
CC = gcc
CFLAGS= -g -Wall
-std=c99
main: main.o tree.o string.o
	$(CC) $(CFLAGS) -o main main.o tree.o string.o
main.o: main.c
	$(CC) $(CFLAGS) -c main.c
tree.o: tree.c tree.h
	$(CC) $(CFLAGS) -Wall -c tree.c -o tree.o
string.o: string.c string.h
	$(CC) $(CFLAGS) -Wall -c string.c -o string.o
clean:
	rm -f main.o tree.o string.o tree
all: main