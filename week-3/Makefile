obj-m += plat.o
KDIR := ../resource/linux

PWD := $(shell pwd)

ARCH := arm64
CROSS_COMPILE := aarch64-linux-gnu-

all:
	make -C $(KDIR) \
	ARCH=$(ARCH) \
	CROSS_COMPILE=$(CROSS_COMPILE) \
	M=$(PWD) modules

clean:
	make -C $(KDIR) \
	ARCH=$(ARCH) \
	CROSS_COMPILE=$(CROSS_COMPILE) \
	M=$(PWD) clean
