#include<linux/platform_device.h>
#include<linux/module.h>
#include<linux/of.h>
#include <linux/io.h>
#include <types.h>

void __iomem *base_addr;

static const struct of_device_id platform_driver_match_table[]={
    {
     .compatible="demo,plat",
    },
    {}
};
MODULE_DEVICE_TABLE(of, platform_driver_match_table);


static int plat_demo_probe(struct platform_device *pdev){
    struct resource *res;
    u32 value;
        dev_info(&pdev->dev, "Probe called\n");

    res= platform_get_resource(pdev, IORESOURCE_MEM, 0);
    if(!res){
        dev_err(&pdev->dev, "Failed to get resource\n");
        return -ENODEV;
    }
    dev_info(&pdev->dev,"start %pa, end %pa:\n",&res->start,&res->end);
    base_addr=devm_ioremap_resource(&pdev->dev,res);


    //this read  operation will give 0xFF....FF beacuse right now we are not reading correct address hardware just dummy register
    //this write operation will not change the value of register because we are not writing to correct address hardware just dummy register
    value=readl(base_addr);
    
    dev_info(&pdev->dev, "before edit register value = %u\n", value);

    writel(1, base_addr);
    value=readl(base_addr);

    dev_info(&pdev->dev, "after edit register value = %u\n", value);

    value=readl(base_addr + 0x10);
    
    dev_info(&pdev->dev, "before edit register offset at 10 value = %u\n", value);
    
    writel(1, base_addr+ 0x10);
    value=readl(base_addr + 0x10);
    dev_info(&pdev->dev, "after edit register offset at 10 value = %u\n", value);


    return 0;
}

static void plat_demo_remove(struct platform_device *pdev){
        dev_info(&pdev->dev, "remove called\n");

}
static struct platform_driver plat_demo_driver={
    .probe=plat_demo_probe,
    .remove=plat_demo_remove,
    .driver={
        .name = "plat_driver",
        .of_match_table=platform_driver_match_table,

    },
};

module_platform_driver(plat_demo_driver);

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Faizan Momin");
MODULE_DESCRIPTION("Platform Driver Demo");