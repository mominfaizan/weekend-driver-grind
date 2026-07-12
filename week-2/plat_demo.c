#include <linux/module.h>
#include <linux/platform_device.h>
#include <linux/of.h>

struct plat_demo_private {
    int value;
    char name[32];
};

static int plat_demo_probe(struct platform_device *pdev)
{
    struct plat_demo_private *priv;

    dev_info(&pdev->dev, "Probe called\n");

    priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
    if (!priv)
        return -ENOMEM;

    priv->value = 100;
    strscpy(priv->name, "Platform Demo", sizeof(priv->name));

    platform_set_drvdata(pdev, priv);

    dev_info(&pdev->dev, "Private data allocated\n");

    return 0;
}

static void plat_demo_remove(struct platform_device *pdev)
{
    struct plat_demo_private *priv = platform_get_drvdata(pdev);

    dev_info(&pdev->dev, "Removing driver\n");
    dev_info(&pdev->dev, "value=%d\n", priv->value);
    dev_info(&pdev->dev, "name=%s\n", priv->name);
}

static const struct of_device_id plat_demo_match[] = {
    {
        .compatible = "demo,platform",
    },
    { }
};

MODULE_DEVICE_TABLE(of, plat_demo_match);

static struct platform_driver plat_demo_driver = {
    .probe  = plat_demo_probe,
    .remove = plat_demo_remove,
    .driver = {
        .name = "plat_demo",
        .of_match_table = plat_demo_match,
    },
};

module_platform_driver(plat_demo_driver);

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Faizan Momin");
MODULE_DESCRIPTION("Platform Driver Demo");