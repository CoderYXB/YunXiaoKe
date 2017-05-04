//
//  SKNavigationViewController.m
//  ShuangKuaiYunXiao
//
//  Created by yuzhongkeji on 2017/5/4.
//  Copyright © 2017年 yuzhongkeji. All rights reserved.
//

#import "SKNavigationViewController.h"

@interface SKNavigationViewController ()

@end

@implementation SKNavigationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    [self.navigationBar setBackgroundColor:[UIColor redColor]];
    
    // 设置标题属性
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    dict[NSForegroundColorAttributeName] = [UIColor whiteColor];
    dict[NSFontAttributeName] = [UIFont systemFontOfSize:KNavTitleFont];
    [self.navigationBar setTitleTextAttributes:dict];
    
    
}


- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if (self.viewControllers.count > 0) {
        
        viewController.hidesBottomBarWhenPushed = YES;
        
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"返回" style:UIBarButtonItemStyleDone target:self action:@selector(back)];
    }
    
    [self.navigationController pushViewController:viewController animated:animated];
}


- (void)back
{
    [self popViewControllerAnimated:YES];
}
@end
