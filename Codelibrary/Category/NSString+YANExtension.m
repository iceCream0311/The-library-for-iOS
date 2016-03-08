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


+ (NSString *)getCurrentDate{
    NSDate *date = [NSDate date];
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    [formatter setDateFormat:@"YYYY-MM-dd-HH-mm-ss"];
    NSString *dateString = [formatter stringFromDate:date];
    return dateString;
}

+ (NSString *)getTimestamp{
    NSDate *timestamp = [NSDate dateWithTimeIntervalSinceNow:0];
    NSTimeInterval timeInterval = [timestamp timeIntervalSince1970]*1000;
    NSString *string = [NSString stringWithFormat:@"%.0f",timeInterval];
    return string;
}

+ (NSString *)getTheCurrentTimeDescription:(NSString *)compareTime{
    NSString *result = [NSString string];
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    [formatter setDateFormat:@"YYYY-MM-dd-HH-mm-ss"];
    NSDate *date = [formatter dateFromString:compareTime];
    NSTimeInterval timeInterval = [date timeIntervalSinceNow];
    timeInterval = -timeInterval;
    long temp;
    if (timeInterval<60) {
        result = @"刚刚";
    }else if ((temp = timeInterval/60)<60){
        result = [NSString stringWithFormat:@"%ld分钟之前",temp];
    }else if ((temp = timeInterval/60/24)<24){
        result = [NSString stringWithFormat:@"%ld小时之前",temp];
    }else{
        result = [formatter stringFromDate:date];
    }
    return result;
}

+ (NSString *)getTheTimeFromTimestamp:(NSTimeInterval)timeStamp{
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:timeStamp];
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    [formatter setDateFormat:@"YYYY-MM-dd-HH-mm-ss"];
    NSString *dateString = [formatter stringFromDate:date];
    return dateString;
}

@end
