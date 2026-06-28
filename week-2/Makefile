obj-m += plat_demo.o

KDIR := ../resource/kernel-source

PWD := $(shell pwd)

all:
	make -C $(KDIR) M=$(PWD) modules

clean:
	make -C $(KDIR) M=$(PWD) clean
