//
//  NSString+YANExtension.h
//
//  Created by 赵岩 on 15/11/6.
//  Copyright © 2015年 qiyexingcheng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface NSString (YANExtension)
/**
 *  根据传入的文本显示的字号和要文本的最大显示范围设置文本区域
 *
 *  @param font    字号
 *  @param maxSize 文本最大的显示范围
 *
 *  @return 可变化的文本的size
 */
- (CGSize)sizeWithFont:(UIFont *)font maxTextSize:(CGSize)maxSize;


/**
 *  获得当前的时间
 *
 *  @return NSString
 */
+ (NSString *)getCurrentDate;


/**
 *  获取时间戳
 *
 *  @return NSString
 */
+ (NSString *)getTimestamp;
/**
 *  获得当时时间相对于现在的描述
 *
 *  @return NSString
 */
+ (NSString *)getTheCurrentTimeDescription:(NSString *)compareTime;

@end
