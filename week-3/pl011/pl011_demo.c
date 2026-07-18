#include <linux/module.h>
#include <linux/platform_device.h>
#include <linux/of.h>
#include <linux/of_address.h>
#include <linux/io.h>
#include <linux/interrupt.h>

#define UARTDR     0x00
#define UARTFR     0x18
#define UARTCR     0x30

struct pl011_demo_priv {
    void __iomem *base;
    struct resource *res;
    int irq;
};

static irqreturn_t pl011_demo_irq(int irq, void *dev_id)
{
    struct pl011_demo_priv *priv = dev_id;

    pr_info("******** PL011 IRQ Fired ********\n");

    pr_info("UARTDR : 0x%08x\n",
            readl(priv->base + UARTDR));

    pr_info("UARTFR : 0x%08x\n",
            readl(priv->base + UARTFR));

    return IRQ_HANDLED;
}

static int pl011_demo_probe(struct platform_device *pdev)
{
    struct pl011_demo_priv *priv;
    int ret;

    pr_info("========== PL011 Demo Probe ==========\n");

    priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
    if (!priv)
        return -ENOMEM;

    platform_set_drvdata(pdev, priv);

    priv->res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
    if (!priv->res) {
        pr_err("Failed to get memory resource\n");
        return -ENODEV;
    }

    pr_info("Physical Start : 0x%pa\n", &priv->res->start);
    pr_info("Physical End   : 0x%pa\n", &priv->res->end);

    //if this owns the resource then it will return the virtual address otherwise it will return error pointer right now we are not owning the resource(already real driver pl011 own this) so it will return error pointer
    // priv->base = devm_ioremap_resource(&pdev->dev, priv->res);
    // if (IS_ERR(priv->base))
    //     return PTR_ERR(priv->base);

    //if we are not owning the resource then we can use devm_ioremap mannually to get the virtual address of the resource
    priv->base = devm_ioremap(&pdev->dev,
                          priv->res->start,
                          resource_size(priv->res));

    if (!priv->base)
        return -ENOMEM;
  

    pr_info("Virtual Address : %p\n", priv->base);

    pr_info("UARTDR : 0x%08x\n",
            readl(priv->base + UARTDR));

    pr_info("UARTFR : 0x%08x\n",
            readl(priv->base + UARTFR));

    pr_info("UARTCR : 0x%08x\n",
            readl(priv->base + UARTCR));

    priv->irq = platform_get_irq(pdev, 0);
    if (priv->irq < 0) {
        pr_err("Failed to get IRQ\n");
        return priv->irq;
    }

    pr_info("IRQ Number : %d\n", priv->irq);

    ret = devm_request_irq(&pdev->dev,
                           priv->irq,
                           pl011_demo_irq,
                           IRQF_SHARED,
                           "pl011_demo",
                           priv);

    if (ret)
        pr_err("IRQ Request Failed (%d)\n", ret);
    else
        pr_info("IRQ Registered Successfully\n");

    pr_info("========== Probe Finished ==========\n");

    return 0;
}


static void pl011_demo_remove(struct platform_device *pdev)
{
    pr_info("PL011 Demo Remove\n");
}

static const struct of_device_id pl011_demo_match[] = {
    { .compatible = "demo,pl011" },
    { }
};

MODULE_DEVICE_TABLE(of, pl011_demo_match);

static struct platform_driver pl011_demo_driver = {
    .probe = pl011_demo_probe,
    .remove = pl011_demo_remove,
    .driver = {
        .name = "pl011_demo",
        .of_match_table = pl011_demo_match,
    },
};

module_platform_driver(pl011_demo_driver);

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Faizan");
MODULE_DESCRIPTION("PL011 Learning Driver");
