//
//  NSString+YANExtension.h
//  QQ聊天界面
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

@end
