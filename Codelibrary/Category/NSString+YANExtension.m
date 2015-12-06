//
//  NSString+YANExtension.m
//
//  Created by 赵岩 on 15/11/6.
//  Copyright © 2015年 qiyexingcheng. All rights reserved.
//

#import "NSString+YANExtension.h"

@implementation NSString (YANExtension)

- (CGSize)sizeWithFont:(UIFont *)font maxTextSize:(CGSize)maxSize
{
    NSDictionary *dict = @{NSFontAttributeName: font};
    CGSize textSize = [self boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:dict context:nil].size;
    return textSize;
}

@end
