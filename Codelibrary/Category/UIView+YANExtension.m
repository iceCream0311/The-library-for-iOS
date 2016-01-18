//
//  UIView+YANExtension.m
//  QQ聊天界面
//
//  Created by 赵岩 on 15/11/6.
//  Copyright © 2015年 qiyexingcheng. All rights reserved.
//

#import "UIView+YANExtension.h"

@implementation UIView (YANExtension)


- (void)setX:(CGFloat)X{
    CGRect frame = self.frame;
    frame.origin.x = X;
}

- (CGFloat)X{
    return self.frame.origin.x;
}

- (void)setY:(CGFloat)Y
{
    CGRect frame = self.frame;
    frame.origin.y = Y;
    self.frame = frame;
}

- (CGFloat)Y
{
    return self.frame.origin.y;
}

- (void)setWidth:(CGFloat)width
{
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (CGFloat)width
{
    return self.frame.size.width;
}

- (void)setHeight:(CGFloat)height
{
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

- (CGFloat)height
{
    return self.frame.size.height;
}

- (void)setSize:(CGSize)size
{
    //    self.width = size.width;
    //    self.height = size.height;
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

- (CGSize)size
{
    return self.frame.size;
}



#pragma mark - 自适应拉伸图片

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


#pragma mark - 用图片生成水印图片

+ (UIImage *)fetchWaterMarkBackgroundImage:(UIImage *)backImage LogoImage:(UIImage *)logoImage margin:(CGFloat)marginWidth{
    //绘制背景图片
    UIGraphicsBeginImageContextWithOptions(backImage.size, NO, 0);
    [backImage drawAtPoint:CGPointMake(0, 0)];
    //绘制水印图片
    CGFloat logoImageX = backImage.size.width - marginWidth;
    CGFloat logoImageY = backImage.size.height - marginWidth;
    [logoImage drawAtPoint:CGPointMake(logoImageX, logoImageY)];
    //获取最新的图片
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    return image;
}


#pragma mark - 用文字生成水印图片

+ (UIImage *)fetchWaterMarkBackgroundImage:(UIImage *)backImage logoString:(NSString *)logoString margin:(CGFloat)marginWidth{
    //绘制背景图片
    UIGraphicsBeginImageContextWithOptions(backImage.size, NO, 0);
    [backImage drawAtPoint:CGPointMake(0, 0)];
    //绘制水印图片
    CGFloat logoImageX = backImage.size.width - marginWidth;
    CGFloat logoImageY = backImage.size.height - marginWidth;
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    dict [NSForegroundColorAttributeName] = [UIColor blueColor];
    dict[NSBackgroundColorAttributeName] = [UIColor blackColor];
    dict[NSFontAttributeName] = [UIFont systemFontOfSize:20];
    [logoString drawAtPoint:CGPointMake(logoImageX, logoImageY) withAttributes:dict];
    //获取最新的图片
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    return image;
}


@end
