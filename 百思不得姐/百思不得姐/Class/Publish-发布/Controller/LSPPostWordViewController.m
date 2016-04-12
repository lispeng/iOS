//
//  LSPPostWordViewController.m
//  百思不得姐
//
//  Created by mac on 16-4-12.
//  Copyright (c) 2016年 Lispeng. All rights reserved.
//*************发布文字-段子的控制器***************/

#import "LSPPostWordViewController.h"
#import "LSPPlaceholderTextView.h"
@interface LSPPostWordViewController ()

@end

@implementation LSPPostWordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    //初始化控件
    [self setupPostWordControl];
    
    [self setupTextView];
}
- (void)setupPostWordControl
{
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"发表文字";
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"取消" style:UIBarButtonItemStyleDone target:self action:@selector(cancel)];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"发表" style:UIBarButtonItemStyleDone target:self action:@selector(postWord)];
    //右侧按钮默认不能点击
    self.navigationItem.rightBarButtonItem.enabled = NO;
    //强制刷新
    [self.navigationController.navigationBar layoutIfNeeded];
}
- (void)setupTextView
{
    LSPPlaceholderTextView *textView = [[LSPPlaceholderTextView alloc] init];
    textView.frame = self.view.bounds;
    textView.placeholderColor = [UIColor redColor];
    textView.placeholder = @"把好玩的图片，好笑的段子或糗事发到这里，接受千万网友膜拜吧！发布违反国家法律内容的，我们将依法提交给有关部门处理。";
    [self.view addSubview:textView];
}
- (void)cancel
{
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (void)postWord
{
    LSPLog(@"右侧按钮的点击事件");
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
