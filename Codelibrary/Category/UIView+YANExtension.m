//
//  UIView+YANExtension.m
//  QQ聊天界面
//
//  Created by 赵岩 on 15/11/6.
//  Copyright © 2015年 qiyexingcheng. All rights reserved.
//

#import "UIView+YANExtension.h"

@implementation UIView (YANExtension)
+ (UIImage *)resizableImageWithImageName:(NSString *)imageName{
    // 加载原有图片
    UIImage *oldImage = [UIImage imageNamed:imageName];
    // 获取原有图片的宽高的一半
    CGFloat width = oldImage.size.width * 0.5;
    CGFloat height = oldImage.size.height * 0.5;
    // 生成可以拉伸指定位置的图片
    UIImage *newImage = [oldImage resizableImageWithCapInsets:UIEdgeInsetsMake(height, width, height, width) resizingMode:UIImageResizingModeStretch];
    
    return newImage;
}

@end
