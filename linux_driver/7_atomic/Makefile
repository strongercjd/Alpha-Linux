KERNELDIR := ~/linux/Alpha-Linux/linux_kernel
CURRENT_PATH := $(shell pwd)

obj-m := atomic.o

build: kernel_modules

kernel_modules:
	$(MAKE) -C $(KERNELDIR) M=$(CURRENT_PATH) modules

clean:
	$(MAKE) -C $(KERNELDIR) M=$(CURRENT_PATH) clean