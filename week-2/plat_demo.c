#include <linux/module.h>
#include <linux/platform_device.h>
#include <linux/of.h>

static struct platform_device *pdev; //just for when we are not using dts and registering the platform device manually in the init function

struct plat_demo_private {
    int value;
    char name[32];
};

static int plat_demo_probe(struct platform_device *pdev) {
    struct plat_demo_private *priv;
    pr_info("device probe : %s\n", dev_name(&pdev->dev));

    priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
    if (!priv)
        return -ENOMEM;

    priv->value = 100;
    strscpy(priv->name, "Platform Demo", sizeof(priv->name));

    platform_set_drvdata(pdev, priv);

    pr_info("private data allocated\n");

    return 0;
}
static void plat_demo_remove(struct platform_device *pdev)
{
    struct plat_demo_private *priv;
    priv = platform_get_drvdata(pdev);

    pr_info("device removed\n");
    pr_info("value = %d\n", priv->value);
    pr_info("name = %s\n", priv->name);
}
static const struct of_device_id plat_demo_match[] = {
    {
        .compatible = "demo,platform",
    },
    { }
};

MODULE_DEVICE_TABLE(of, plat_demo_match);
static struct platform_driver plat_demo_driver = {
    
    .probe = plat_demo_probe,

    .remove = plat_demo_remove,
    .driver = {
        .name = "plat_demo",
        .of_match_table = plat_demo_match,
    },
};

static int __init plat_demo_init(void) {
   //now we are not using dts beacuse of qemu so we will register the platform device and driver manually if we use dts then no need to add this code block
   //from here
   pr_info("plat_demo_init\n");
   pdev = platform_device_register_simple("plat_demo", -1, NULL, 0);
   if (IS_ERR(pdev)) {
       pr_err("Failed to register platform device\n");
       return PTR_ERR(pdev);
    }
    //till now.

    // Register the platform driver
    return platform_driver_register(&plat_demo_driver);
}

static void __exit plat_demo_exit(void) {
    pr_info("plat_demo_exit\n");
    platform_driver_unregister(&plat_demo_driver);
    // when not using dts then we need to unregister the platform device manually
    platform_driver_unregister(&plat_demo_driver);

}
module_init(plat_demo_init);
module_exit(plat_demo_exit);

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Faizan Momin");
MODULE_DESCRIPTION("Platform Driver Demo");