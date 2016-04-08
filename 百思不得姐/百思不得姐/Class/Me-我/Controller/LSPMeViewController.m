//
//  LSPMeViewController.m
//  百思不得姐
//
//  Created by mac on 16-2-6.
//  Copyright (c) 2016年 Lispeng. All rights reserved.
//

#import "LSPMeViewController.h"

@interface LSPMeViewController ()

@end

@implementation LSPMeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //设置导航栏的内容
    [self setupMeTrendsNavigationBar];
    // Do any additional setup after loading the view.
}
/**
 *  设置导航栏的内容
 */
- (void)setupMeTrendsNavigationBar
{
    //设置背景色
    self.view.backgroundColor = LSPBackgroundColor;
    //设置导航栏标题
    self.navigationItem.title = @"我的";
    //设置导航栏左边的按钮    
    UIBarButtonItem *mineSettingItem = [UIBarButtonItem itemWithImage:@"mine-setting-icon" highlightImage:@"mine-setting-icon-click" target:self action:@selector(mineSettingButtonClick)];
    UIBarButtonItem *mineMoonItem = [UIBarButtonItem itemWithImage:@"mine-moon-icon" highlightImage:@"mine-moon-icon-click" target:self action:@selector(mineMoonButtonClick)];
    self.navigationItem.rightBarButtonItems = @[mineSettingItem,mineMoonItem];
}
/**
 *  点击设置按钮所触发的方法
 */
- (void)mineSettingButtonClick
{
    LSPLog(@"%s",__func__);
}
/**
 *  点击导航栏夜间模式的按钮所触发的方法
 */
- (void)mineMoonButtonClick
{
    LSPLog(@"%s",__func__);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
