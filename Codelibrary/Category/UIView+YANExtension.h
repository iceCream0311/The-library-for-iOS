//
//  UIView+YANExtension.h
//  QQ聊天界面
//
//  Created by 赵岩 on 15/11/6.
//  Copyright © 2015年 qiyexingcheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (YANExtension)
/**
 *  获取拉伸后的图片
 *
 *  @param imageName 原始图片的名称
 *
 *  @return 新图片
 */
+ (UIImage *)resizableImageWithImageName:(NSString *)imageName;
@end
