#include <linux/fs.h>
#include <linux/cdev.h>
#include <linux/device.h>
#include <linux/init.h>

static dev_t dev_num;
static struct cdev hello_cdev;

static struct class *hello_class;
static struct device *hello_device;

#define BUF_SIZE 128

static char hello_buf[BUF_SIZE];
static size_t hello_buf_len;

static int hello_open(struct inode * inode,
  struct file * file) {
  pr_info("hello_open\n");
  return 0;
}

static ssize_t hello_read(struct file * file,
  char __user * buf,
  size_t len,
  loff_t * off) {
  
  int msg_len = hello_buf_len;
  if ( * off >= msg_len)
    return 0;

  if (len > msg_len - * off)
    len = msg_len - * off;

  if (copy_to_user(buf, hello_buf + * off, len))
    return -EFAULT;

  * off += len;

  return len;
}

static ssize_t hello_write(struct file * file,
  const char __user * buf,
  size_t len,
  loff_t * off) {
   if (len > BUF_SIZE - 1)
        len = BUF_SIZE - 1;

    if (copy_from_user(hello_buf, buf, len))
        return -EFAULT;

    hello_buf[len] = '\0';
    hello_buf_len = len;

    pr_info("hello_write: %s\n", hello_buf);

    return len;
}
static int hello_release(struct inode * inode,
  struct file * file) {
  pr_info("hello_release\n");
  return 0;
}

static struct file_operations hello_fops = {
  .owner = THIS_MODULE,
  .open = hello_open,
  .write = hello_write,
  .read = hello_read,
  .release = hello_release,
};

static int __init hello_init(void) {
  int ret;

  pr_info("hello init\n");

  ret = alloc_chrdev_region( & dev_num,
    0,
    1,
    "hello");

  if (ret) {
    pr_err("alloc_chrdev_region failed\n");
    return ret;
  }
  cdev_init( & hello_cdev, &
    hello_fops);

  cdev_add( & hello_cdev,
    dev_num,
    1);

  
    hello_class = class_create("hello_class");
    if (IS_ERR(hello_class)) {
        ret = PTR_ERR(hello_class);
        cdev_del(&hello_cdev);
        unregister_chrdev_region(dev_num, 1);
        return ret;
    }

    hello_device = device_create(
        hello_class,      /* class */
        NULL,             /* parent */
        dev_num,          /* dev_t */
        NULL,             /* drvdata */
        "hello"           /* /dev/hello */
    );

    if (IS_ERR(hello_device)) {
        ret = PTR_ERR(hello_device);
        class_destroy(hello_class);
        cdev_del(&hello_cdev);
        unregister_chrdev_region(dev_num, 1);
        return ret;
    }
    strcpy(hello_buf, "hello from kernel\n"); //by default intializing the buffer
    hello_buf_len = strlen(hello_buf);
  pr_info("major=%d minor=%d\n",
     MAJOR(dev_num),
   MINOR(dev_num));

   return 0;
}

static void __exit hello_exit(void) {
  cdev_del( & hello_cdev);
  unregister_chrdev_region(dev_num, 1);
  pr_info("hello exit\n");
}

module_init(hello_init);
module_exit(hello_exit);

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Faizan");
MODULE_DESCRIPTION("Hello Kernel Module");