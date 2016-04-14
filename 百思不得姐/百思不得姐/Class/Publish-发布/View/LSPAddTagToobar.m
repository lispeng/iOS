//
//  LSPAddTagToobar.m
//  百思不得姐
//
//  Created by mac on 16-4-13.
//  Copyright (c) 2016年 Lispeng. All rights reserved.
//

#import "LSPAddTagToobar.h"
#import "LSPAddTagViewController.h"
@interface LSPAddTagToobar()
/**
 *  顶部的控件
 */
@property (weak, nonatomic) IBOutlet UIView *topView;

@end
@implementation LSPAddTagToobar
+ (instancetype)toolbar
{
    return [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil] lastObject];
}

- (void)awakeFromNib
{
    //控件右边的添加按钮
    UIButton *addButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [addButton setImage:[UIImage imageNamed:@"tag_add_icon"] forState:UIControlStateNormal];
    addButton.size = addButton.currentImage.size;
    addButton.x = LSPTagMargin;
    [addButton addTarget:self action:@selector(addButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [self.topView addSubview:addButton];
}
- (void)addButtonClick
{
    LSPAddTagViewController *addTagVC = [[LSPAddTagViewController alloc] init];
    UIViewController *rootVC = [UIApplication sharedApplication].keyWindow.rootViewController;
    UINavigationController *nav = (UINavigationController *)rootVC.presentedViewController;
    [nav pushViewController:addTagVC animated:YES];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
