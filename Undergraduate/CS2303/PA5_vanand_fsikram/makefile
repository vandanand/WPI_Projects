# makefile for PA5

CC = g++
CFLAGS= -g -Wall -lm

PA5: PA5.o Rational.o
	$(CC) $(CFLAGS) -o PA5 PA5.o Rational.o
PA5.o: PA5.cpp PA5.h 
	$(CC) $(CFLAGS) -c PA5.cpp 
Rational.o: Rational.cpp Rational.h 
	$(CC) $(CFLAGS) -c Rational.cpp Rational.h 
clean:
	rm -f PA5.o Rational.o
all: PA5
