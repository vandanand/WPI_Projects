obj-m := virusscanner.o
KDIR := /lib/modules/$(shell uname -r)/build
PWD := $(shell pwd)

all:
	$(MAKE) -C $(KDIR) M=$(PWD) modules
	gcc -o testcalls testcalls.c

clean:
	$(MAKE) -C $(KDIR) M=$(PWD) clean
	rm -rf *.o testcalls
