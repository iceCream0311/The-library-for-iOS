//
//  UIBarButtonItem+YANExtensions.h
//  Codelibrary
//
//  Created by 赵岩 on 16/1/20.
//  Copyright © 2016年 zyan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (YANExtensions)
+ (UIBarButtonItem *)itemWithImageName:(NSString *)imageName highImageName:(NSString *)highImageName target:(id)target action:(SEL)action;
@end
