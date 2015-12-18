//
//  YANTabBar.m
//  彩票
//
//  Created by 赵岩 on 15/12/18.
//  Copyright © 2015年 zyan. All rights reserved.
//

#import "YANTabBar.h"
#import "YANTabBarButton.h"


@interface YANTabBar ()
/**
 *  记录哪个按钮被点击了
 */
@property (strong, nonatomic) YANTabBarButton *selectedButton;
@end


@implementation YANTabBar

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {

    }
    return self;
}

- (void)layoutSubviews{
    [super layoutSubviews];
    for (int i = 0; i< self.subviews.count; i++) {
        YANTabBarButton *button = self.subviews[i];
        button.tag = i;
        CGFloat height = self.bounds.size.height;
        NSLog(@"%d",i);
        CGFloat width = self.bounds.size.width/self.subviews.count;
        button.frame = CGRectMake(width*i, 0, width , height);
    }

}


/**
 *  tabBar上按钮的点击事件
 *
 *  @param button YANTabBarButton
 */

- (void)barButtonTouch:(YANTabBarButton *)button{
    self.selectedButton.enabled = YES;
    self.selectedButton = button;
    button.enabled = NO;
    if ([self.delegate respondsToSelector:@selector(didSeletedFrom:to:)]) {
        [self.delegate didSeletedFrom:self.selectedButton.tag to:button.tag];
    }
}

- (void)addTabBarNormalImage:(NSString *)normalSting disableImage:(NSString *)disableImage{
    YANTabBarButton *barButton = [[YANTabBarButton alloc]init];
    if (self.subviews.count == 0) {
        [self barButtonTouch:barButton];
    }
    barButton.backgroundColor = [UIColor blueColor];
    [barButton setBackgroundImage:[UIImage imageNamed:normalSting] forState:UIControlStateNormal];
    barButton.adjustsImageWhenHighlighted = NO;
    [barButton setBackgroundImage:[UIImage imageNamed:disableImage] forState:UIControlStateDisabled];
    [barButton addTarget:self action:@selector(barButtonTouch:) forControlEvents:UIControlEventTouchDown];
    [self addSubview:barButton];
}
@end
