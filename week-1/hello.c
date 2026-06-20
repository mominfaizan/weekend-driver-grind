#include <linux/fs.h>
#include <linux/cdev.h>
#include <linux/device.h>

static dev_t dev_num;
static struct cdev hello_cdev;

static int hello_open(struct inode * inode,
  struct file * file) {
  pr_info("hello_open\n");
  return 0;
}

static ssize_t hello_read(struct file * file,
  char __user * buf,
  size_t len,
  loff_t * off) {
  const char * msg = "hello from kernel\n";
    pr_info("hello read\n");
  int msg_len = strlen(msg);

  if ( * off >= msg_len)
    return 0;

  if (len > msg_len - * off)
    len = msg_len - * off;

  if (copy_to_user(buf, msg + * off, len))
    return -EFAULT;

  * off += len;

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
  pr_info("major=%d minor=%d\n",
    MAJOR(dev_num),
    MINOR(dev_num));

  return 0;
}

static void __exit hello_exit(void) {
  unregister_chrdev_region(dev_num, 1);
  cdev_del( & hello_cdev);
  pr_info("hello exit\n");
}

module_init(hello_init);
module_exit(hello_exit);

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Faizan");
MODULE_DESCRIPTION("Hello Kernel Module");