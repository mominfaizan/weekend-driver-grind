# Linux Driver Learning Notes - Week 1

# 1. What is a Kernel Module?

## Definition

A kernel module is a piece of code that can be loaded and unloaded into the Linux kernel at runtime without rebuilding or rebooting the kernel.

Kernel modules are usually used for:

* Device Drivers
* Filesystems
* Network Protocols
* Security Features

Examples:

* USB Driver
* Camera Driver
* WiFi Driver
* Bluetooth Driver

---

## Why do Kernel Modules Exist?

Without modules:

Modify Driver
→ Rebuild Kernel
→ Reboot System
→ Test

With modules:

Modify Driver
→ Build .ko file
→ insmod
→ Test Immediately

This significantly reduces development time.

---

## User Space vs Kernel Space

User Space:

* Applications run here
* Restricted permissions
* Cannot directly access hardware

Examples:

* Chrome
* VLC
* ls
* cat

Kernel Space:

* Linux kernel runs here
* Full hardware access
* Device drivers run here

A bug in user space crashes one process.

A bug in kernel space may crash the entire system.

---

## Kernel Module Lifecycle

Load Module:

insmod hello.ko

↓

module_init()

↓

Initialization Code

Unload Module:

rmmod hello

↓

module_exit()

↓

Cleanup Code

---

## module_init()

Registers the initialization function executed when the module is loaded.

Example:

static int __init hello_init(void)
{
printk(KERN_INFO "Hello Kernel");
return 0;
}

module_init(hello_init);

Purpose:

* Allocate memory
* Register driver
* Create device nodes
* Initialize hardware

---

## module_exit()

Registers the cleanup function executed when the module is removed.

Example:

static void __exit hello_exit(void)
{
printk(KERN_INFO "Goodbye Kernel");
}

module_exit(hello_exit);

Purpose:

* Free memory
* Unregister driver
* Release resources

---

## THIS_MODULE

Represents the currently loaded module.

Common Usage:

.owner = THIS_MODULE

Purpose:

Prevents module unloading while it is still being used.

Without THIS_MODULE:

Application opens device
↓
User executes rmmod
↓
Module removed
↓
Kernel crashes

With THIS_MODULE:

Application opens device
↓
Reference count increases
↓
rmmod fails until device is closed

---

# 2. Character Drivers and File Operations

Linux follows:

Everything is a file.

Devices appear as:

/dev/null
/dev/zero
/dev/tty
/dev/mydriver

Applications interact through standard file APIs.

User Space:

open()
read()
write()
ioctl()
close()

Kernel translates these into driver callbacks.

---

## file_operations Mapping

Userspace Call      Driver Callback

open()       →      .open

read()       →      .read

write()      →      .write

ioctl()      →      .unlocked_ioctl

close()      →      .release

Example:

struct file_operations fops = {
.owner = THIS_MODULE,
.open = my_open,
.read = my_read,
.write = my_write,
.unlocked_ioctl = my_ioctl,
.release = my_release,
};

---

## Actual Flow

Application:

read(fd, buf, 100);

↓

System Call

↓

VFS (Virtual File System)

↓

file_operations.read

↓

my_read()

This is how userspace reaches driver code.

---

# 3. Major and Minor Numbers

Every device file contains:

Major Number
Minor Number

Example:

ls -l /dev/null

Output:

1, 3

Major = 1
Minor = 3

---

## Major Number

Identifies the driver.

Think:

Major = Driver ID

Kernel uses major number to determine which driver should handle a request.

---

## Minor Number

Identifies a particular device managed by the driver.

Think:

Minor = Device Instance

Example:

Driver controls:

/dev/led0
/dev/led1
/dev/led2

All share same major.

Each has different minor.

---

## register_chrdev()

Old API

register_chrdev(240, "mydrv", &fops);

Problems:

* Static major number
* Possible conflicts

---

## alloc_chrdev_region()

Modern API

alloc_chrdev_region(&dev, 0, 1, "mydrv");

Advantages:

* Dynamic allocation
* No conflicts

Preferred in modern drivers.

---

# 4. Understanding mem.c Driver

mem.c implements:

/dev/mem
/dev/null
/dev/zero
/dev/full

---

## Driver Registration

register_chrdev(MEM_MAJOR, "mem", &memory_fops);

Registers the character driver.

---

## memory_open()

Purpose:

Determine which device was opened.

Example:

open("/dev/null")

↓

minor = 3

↓

Select null_fops

---

## Important Line

filp->f_op = dev->fops;

This replaces the file operations table based on the device's minor number.

---

## /dev/null

Read:

return 0;

Meaning:

EOF immediately.

Write:

return count;

Meaning:

Accept all bytes and discard them.

---

## /dev/zero

Read:

Returns continuous stream of zero bytes.

Useful for:

* Memory initialization
* Testing
* Anonymous mappings

---

# Interview Questions

Q: What is a kernel module?

A:
A dynamically loadable piece of kernel code that extends kernel functionality without requiring recompilation or reboot.

---

Q: Why use THIS_MODULE?

A:
To prevent a module from being unloaded while it is actively in use.

---

Q: How does read() reach a driver?

A:
read()
→ System Call
→ VFS
→ file_operations.read
→ Driver Callback

---

Q: Major vs Minor Number?

A:

Major:
Identifies Driver

Minor:
Identifies Device Instance

---

Q: Why is alloc_chrdev_region preferred?

A:

* Dynamic allocation
* Avoids major number conflicts
* Modern kernel practice
