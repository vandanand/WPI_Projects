all: bathroomSim.o master.o
	gcc -o bathroomSim bathroomSim.o master.o -lpthread -std=gnu99 -g -Wall -lm

bathroomSim: bathroomSim.c bathroom.h
	gcc -o bathroomSim bathroomSim.c -lpthread -std=gnu99 -g -Wall -lm

master: master.c bathroom.h
	gcc -o master.c bathroom.h -lpthread -std=gnu99 -g -Wall -lm

clean:
	rm -rf *.o bathroomSim 
