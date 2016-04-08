//
//  LSPLoginRegisterViewController.m
//  百思不得姐
//
//  Created by mac on 16-2-19.
//  Copyright (c) 2016年 Lispeng. All rights reserved.
//

#import "LSPLoginRegisterViewController.h"

@interface LSPLoginRegisterViewController ()
/**
 *  注册登录框距离右边的距离
 */
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *loginViewLeftMargin;
@property (weak, nonatomic) IBOutlet UIView *registerView;

@end

@implementation LSPLoginRegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view insertSubview:self.registerView atIndex:0];
    // Do any additional setup after loading the view from its nib.
}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
    // Dispose of any resources that can be recreated.
}
/**
 * 设置状态栏的颜色
 */
- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}
/**
 *  显示登陆或注册界面的方法
 *
 */
- (IBAction)showLoginOrRegister:(UIButton *)sender {
    
    if(self.loginViewLeftMargin.constant == 0){
        //显示注册界面
   NSInteger screenWidth = [UIScreen mainScreen].bounds.size.width;
    self.loginViewLeftMargin.constant = - screenWidth * 2;
        self.registerView.x = screenWidth * 2;
        [sender setTitle:@"已有账号?" forState:UIControlStateNormal];
    
    }else{
        self.loginViewLeftMargin.constant = 0;
        [sender setTitle:@"注册账号" forState:UIControlStateNormal];
    }
[UIView animateWithDuration:0.1 animations:^{
    //更新布局
    [self.view layoutIfNeeded];
    }];
}
/**
 *  点击按钮返回上一个控制器
 */
- (IBAction)backLastVisual {
    
    [self dismissViewControllerAnimated:YES completion:nil];
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
