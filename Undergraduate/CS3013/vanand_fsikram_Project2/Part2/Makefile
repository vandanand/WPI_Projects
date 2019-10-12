obj-m := anc.o
KDIR := /lib/modules/$(shell uname -r)/build
PWD := $(shell pwd)

all:
	$(MAKE) -C $(KDIR) M=$(PWD) modules
	gcc -o test test.c

clean:
	$(MAKE) -C $(KDIR) M=$(PWD) clean
	rm -rf *.o test
