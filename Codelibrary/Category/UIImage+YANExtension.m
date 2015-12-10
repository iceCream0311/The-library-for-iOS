//
//  UIImage+YANExtension.m
//  Codelibrary
//
//  Created by 赵岩 on 15/12/10.
//  Copyright © 2015年 zyan. All rights reserved.
//

#import "UIImage+YANExtension.h"

@implementation UIImage (YANExtension)

+ (UIImage *)saveViewAsImage:(UIView *)view{
    UIGraphicsBeginImageContextWithOptions(view.bounds.size, NO, 0);
    CGContextRef ref = UIGraphicsGetCurrentContext();
    [view.layer renderInContext:ref];
    UIImage *photoImage = UIGraphicsGetImageFromCurrentImageContext();
    return photoImage;
}
@end
