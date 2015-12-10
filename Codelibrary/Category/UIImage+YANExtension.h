//
//  UIImage+YANExtension.h
//  Codelibrary
//
//  Created by 赵岩 on 15/12/10.
//  Copyright © 2015年 zyan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (YANExtension)
/**
 *  将某一个视图保存为图片
 *
 *  @param view 需要保存的view
 *
 *  @return 保存的图片
 */
+ (UIImage *)saveViewAsImage:(UIView *)view;
@end
