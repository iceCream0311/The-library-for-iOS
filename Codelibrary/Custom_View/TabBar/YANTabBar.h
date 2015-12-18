//
//  YANTabBar.h
//  彩票
//
//  Created by 赵岩 on 15/12/18.
//  Copyright © 2015年 zyan. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol YANTabBarDelegate <NSObject>

- (void)didSeletedFrom:(NSInteger)from to:(NSInteger)to;

@end

@interface YANTabBar : UIView
/**
 *  代理
 */
@property (strong, nonatomic) id<YANTabBarDelegate> delegate;
/**
 *  像tabBar中添加之控件
 *
 *  @param normalSting  normalSting description
 *  @param disableImage disableImage description
 */
- (void)addTabBarNormalImage:(NSString *)normalSting disableImage:(NSString *)disableImage;

@end
