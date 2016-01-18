//
//  UIView+YANExtension.h
//
//  Created by 赵岩 on 15/11/6.
//  Copyright © 2015年 qiyexingcheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (YANExtension)

/**
 *  X
 */
@property (assign, nonatomic) CGFloat X;

/**
 *  Y
 */
@property (assign, nonatomic) CGFloat Y;

/**
 *  width
 */
@property (assign, nonatomic) CGFloat width;

/**
 *  height
 */
@property (assign, nonatomic) CGFloat height;

/**
 *  size
 */
@property (assign, nonatomic) CGSize size;


/**
 *  获取拉伸后的图片
 *
 *  @param imageName 原始图片的名称
 *
 *  @return 新图片
 */
+ (UIImage *)resizableImageWithImageName:(NSString *)imageName;
/**
 *  用图片生成水印图片
 *
 *  @param backImage 需要水印的图片
 *  @param image     水印的图片
 *
 *  @return 带有水印的新的图片   
 */
+ (UIImage *)fetchWaterMarkBackgroundImage:(UIImage *)backImage LogoImage:(UIImage *)logoimage margin:(CGFloat)marginWidth;

+ (UIImage *)fetchWaterMarkBackgroundImage:(UIImage *)backImage logoString:(NSString *)logoString margin:(CGFloat)marginWidth;
@end
