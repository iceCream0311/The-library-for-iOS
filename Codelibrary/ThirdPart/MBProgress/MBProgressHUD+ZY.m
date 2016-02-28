//
//  MBProgressHUD+ZY.m
//  Codelibrary
//
//  Created by 赵岩 on 16/1/28.
//  Copyright © 2016年 zyan. All rights reserved.
//

#import "MBProgressHUD+ZY.h"

@implementation MBProgressHUD (ZY)

+ (void)showMasks{
    MBProgressHUD *hud = [[MBProgressHUD alloc]initWithView:[[UIApplication sharedApplication].windows lastObject]];
    [hud show:YES];
    
}

+ (void)show:(NSString *)text icon:(NSString *)icon view:(UIView *)view
{
    if (view == nil) view = [[UIApplication sharedApplication].windows lastObject];
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.labelText = text;
    hud.customView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[NSString stringWithFormat:@"MBProgressHUD.bundle/%@", icon]]];
    hud.mode = MBProgressHUDModeCustomView;
    hud.removeFromSuperViewOnHide = YES;
    [hud hide:YES afterDelay:0.7];
}
+ (void)showError:(NSString *)string{
    [self show:@"这里有错误" icon:@"error.png" view:nil];
}
@end
