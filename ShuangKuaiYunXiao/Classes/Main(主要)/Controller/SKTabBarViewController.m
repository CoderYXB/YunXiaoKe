//
//  SKTabBarViewController.m
//  ShuangKuaiYunXiao
//
//  Created by yuzhongkeji on 2017/5/3.
//  Copyright © 2017年 yuzhongkeji. All rights reserved.
//

#import "SKTabBarViewController.h"
#import "SKHomePageViewController.h"
#import "SKShoppingMallViewController.h"
#import "SKCloudProvidersViewController.h"
#import "SKActivityViewController.h"

@interface SKTabBarViewController ()

@end

@implementation SKTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tabBar.backgroundColor = [UIColor greenColor];
    
    [self addChildView];
    
}


- (void)addChildView
{
    /// 首页
    SKHomePageViewController *homePageVc = [[SKHomePageViewController alloc]init];
    [self addChildView:homePageVc title:@"首页" image:@"gongjuku-n" selectedImage:@"gongjuku-s"];
    
    /// 商城
    SKShoppingMallViewController *shoppingMallVc = [[SKShoppingMallViewController alloc]init];
    [self addChildView:shoppingMallVc title:@"商城" image:@"shangcheng-n" selectedImage:@"shangcheng-s"];
    
    /// 云商
    SKCloudProvidersViewController *cloudProvidersVc = [[SKCloudProvidersViewController alloc]init];
    [self addChildView:cloudProvidersVc title:@"云商" image:@"yunshang-n" selectedImage:@"yunshang-s"];
    
    /// 活动
    SKActivityViewController *activityVc = [[SKActivityViewController alloc]init];
    [self addChildView:activityVc title:@"活动" image:@"huodong-n" selectedImage:@"huodong-s"];
}



- (void)addChildView:(UIViewController *)view title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage
{
    view.tabBarItem.title = title;
    
    view.tabBarItem.image = [[UIImage imageNamed:image] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    view.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    // 设置tabBarItem字体
    NSMutableDictionary *normalDict = [NSMutableDictionary dictionary];
    normalDict[NSForegroundColorAttributeName] = [UIColor blackColor];
    normalDict[NSFontAttributeName] = [UIFont systemFontOfSize:12 *KMatch];
    
    NSMutableDictionary *selectedDict = [NSMutableDictionary dictionary];
    selectedDict[NSForegroundColorAttributeName] = [UIColor redColor];;
    selectedDict[NSFontAttributeName] = [UIFont systemFontOfSize:12 *KMatch];
    
    [view.tabBarItem setTitleTextAttributes:normalDict forState:UIControlStateNormal];
    [view.tabBarItem setTitleTextAttributes:selectedDict forState:UIControlStateSelected];
//    
//    SKNavigationViewController *nav = [[SKNavigationViewController alloc]initWithRootViewController:view];
//    
    [self addChildViewController:view];
}

@end
