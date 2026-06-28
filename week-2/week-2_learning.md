# Linux Driver Learning Notes - Week 2

# Platform Drivers

---

# 1. Why Platform Drivers Exist

## The Problem

Linux supports many kinds of hardware.

Some hardware can announce itself to the kernel.

Examples:

* USB
* PCI
* Thunderbolt

When plugged in:

Hardware
↓

Kernel detects device automatically

↓

Driver loads

This process is called **Device Enumeration**.

---

Embedded systems are different.

Example:

* UART Controller
* GPIO Controller
* Camera Controller
* I2C Controller
* SPI Controller
* Watchdog
* Display Controller

These devices are permanently soldered onto the board.

There is:

* No USB Enumeration
* No PCI Scan

The kernel has no way to discover them automatically.

Question:

How does Linux know these devices exist?

Answer:

Device Tree (ARM/ARM64)

or

ACPI (x86 PCs)

---

# 2. Platform Device

A Platform Device represents hardware already present on the board.

Example:

UART

Base Address = 0x10000000

IRQ = 33

Clock = uart_clk

Linux creates:

struct platform_device

This object represents one hardware device.

---

# 3. Platform Driver

A Platform Driver represents software that controls hardware.

Example:

UART Driver

Camera Driver

GPIO Driver

SPI Driver

Example structure:

struct platform_driver

Contains:

* probe()
* remove()

and matching information.

---

# 4. Driver Registration

Module loading:

insmod plat_demo.ko

↓

module_init()

↓

platform_driver_register()

↓

Driver Core

↓

Wait for matching device

Notice:

Registering a driver DOES NOT call probe().

It only tells Linux:

"My driver is available."

---

# 5. Driver Matching

Linux Driver Core compares:

Platform Device

↓

compatible string

↓

Platform Driver

↓

of_match_table

If they match:

probe() executes.

Otherwise:

Driver remains idle.

---

# 6. probe()

probe() is called exactly once when Linux successfully binds a driver to a device.

Prototype:

static int probe(struct platform_device *pdev)

Typical work inside probe():

* Allocate private memory
* Map hardware registers
* Enable clocks
* Request IRQ
* Initialize hardware
* Register character device

Think of probe() as:

Driver Constructor

Everything required to make hardware operational belongs here.

---

# 7. remove()

Called when:

* Module unloaded
* Driver unbound
* Device removed

Prototype:

static void remove(struct platform_device *pdev)

Purpose:

Undo everything done inside probe().

---

# 8. Difference Between module_exit() and remove()

Many beginners confuse these.

module_exit()

Called when module leaves kernel.

remove()

Called when one device is detached from driver.

One driver can manage multiple devices.

Example:

Camera Driver

↓

Camera 1

Camera 2

Camera 3

Each camera has its own probe()/remove().

But module_exit() executes only once when the module itself is removed.

---

# 9. of_match_table

Example:

static const struct of_device_id demo_of_match[] = {

{ .compatible = "myvendor,demo-device" },

{ }

};

Purpose:

Tell Linux which Device Tree nodes this driver supports.

Driver matching is performed using compatible strings.

---

# 10. compatible String

Device Tree:

compatible = "myvendor,demo-device";

Driver:

compatible = "myvendor,demo-device";

Linux Driver Core compares both strings.

If equal:

↓

probe()

If different:

↓

Driver never loads.

---

# 11. MODULE_DEVICE_TABLE()

Example:

MODULE_DEVICE_TABLE(of, demo_of_match);

Purpose:

Exports supported Device Tree IDs.

Useful for:

* Automatic module loading
* Dependency information
* Userspace utilities

---

# 12. Device Tree

Device Tree describes hardware.

Example:

demo@0 {

compatible = "myvendor,demo-device";

status = "okay";

};

Kernel reads Device Tree during boot.

Creates:

struct platform_device

Driver Core later matches it.

Important:

Device Tree describes hardware.

Drivers control hardware.

Never place driver logic inside Device Tree.

---

# 13. Device Tree vs ACPI

ARM / ARM64

↓

Device Tree

↓

platform_device

↓

probe()

x86 PC

↓

ACPI

↓

platform_device

↓

probe()

Our current QEMU environment is x86.

Therefore Device Tree overlay experiments are not the normal workflow.

Real Qualcomm boards use Device Tree.

---

# 14. devm_* APIs

Old Driver Style

probe()

↓

kmalloc()

ioremap()

request_irq()

clk_prepare_enable()

Every failure path required manual cleanup.

Example:

if(request_irq() fails)

↓

iounmap()

↓

kfree()

Error handling became complicated.

---

Managed Resource APIs

Linux introduced:

devm_kzalloc()

devm_ioremap_resource()

devm_request_irq()

devm_clk_get()

Resources become attached to the device.

When device disappears:

Kernel automatically releases them.

Think:

Managed Lifetime

instead of

Manual Lifetime.

Modern Linux drivers almost always use devm_* APIs.

---

# 15. devm_kzalloc()

Purpose:

Allocate zero-initialized memory associated with one device.

Example:

priv = devm_kzalloc(&pdev->dev,
sizeof(*priv),
GFP_KERNEL);

Advantages:

* Automatically freed
* No explicit kfree()
* Simpler error handling

Preferred over kmalloc() inside probe().

---

# 16. platform_set_drvdata()

Question:

Where should driver private data be stored?

Solution:

Inside platform_device.

Example:

platform_set_drvdata(pdev, priv);

Later:

remove()

↓

platform_get_drvdata(pdev);

↓

Retrieve same pointer.

This avoids using global variables.

Every device instance owns its own private data.

---

# 17. Typical Driver Structure

module_init()

↓

platform_driver_register()

↓

Driver waits

↓

Kernel finds matching platform_device

↓

probe()

↓

devm_kzalloc()

↓

platform_get_resource()

↓

devm_ioremap_resource()

↓

Register interrupts

↓

Hardware ready

↓

Userspace accesses hardware

↓

remove()

↓

Automatic cleanup (devm)

↓

module_exit()

---

# 18. platform_get_resource()

Purpose:

Retrieve hardware resources assigned to the device.

Examples:

Memory Region

IRQ

DMA

Device Tree:

reg = <0x10000000 0x1000>;

↓

Kernel creates struct resource

↓

platform_get_resource()

↓

Driver receives address information.

---

# 19. Why probe() Did Not Execute Initially

Initially only:

platform_driver_register()

was called.

No platform_device existed.

Driver Core had nothing to match.

Result:

probe() never executed.

Later we created a fake platform_device.

Driver Core matched:

Driver Name

↓

Device Name

↓

probe() executed.

This demonstrated Linux's driver binding process.

---

# 20. Real Qualcomm Driver Flow

Boot

↓

Device Tree Loaded

↓

Kernel Creates platform_device

↓

Camera Driver Registers

↓

Compatible Match

↓

probe()

↓

devm_kzalloc()

↓

Map Registers

↓

Enable Clocks

↓

Request IRQ

↓

Camera Ready

This exact sequence is used by most Qualcomm BSP drivers.

---

# Interview Questions

Q: Why do Platform Drivers exist?

A:

Embedded devices cannot be discovered automatically like USB or PCI devices. Platform Drivers allow Linux to bind software drivers to permanently present hardware described by Device Tree or ACPI.

---

Q: What triggers probe()?

A:

A successful match between a platform_device and a platform_driver.

---

Q: Why use devm_kzalloc() instead of kmalloc()?

A:

Because memory is automatically released when the device is removed, reducing cleanup code and preventing leaks.

---

Q: Why use platform_set_drvdata()?

A:

To associate private driver data with a specific platform_device instance.

---

Q: What is the difference between module_exit() and remove()?

A:

module_exit() unloads the module itself.

remove() disconnects one device from its driver.

---

# Mental Model

Device Tree / ACPI

↓

platform_device

↓

Driver Core

↓

platform_driver

↓

probe()

↓

Allocate Resources

↓

Initialize Hardware

↓

Driver Ready

↓

remove()

↓

Cleanup

↓

module_exit()

This is the fundamental architecture behind most modern Linux platform drivers.

