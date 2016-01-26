//
//  NSArray+Extensions.m
//  Codelibrary
//
//  Created by 赵岩 on 16/1/24.
//  Copyright © 2016年 zyan. All rights reserved.
//

#import "NSArray+Extensions.h"

@implementation NSArray (Extensions)

/**
 *  对数组中的元素进行遍历，并输出字符串
 *
 *  @param locale
 *
 *  @return 字符串
 */
- (NSString *)descriptionWithLocale:(id)locale{
    
    NSMutableString *strM = [NSMutableString stringWithString:@"(\n"];
    for (id obj in self) {
        [strM appendFormat:@"\t%@,\n", obj];
    }
    [strM appendString:@")\n"];
    
    return strM;
}

@end
