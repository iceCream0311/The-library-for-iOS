//
//  singleTool.h
//  Codelibrary
//
//  Created by 赵岩 on 16/2/28.
//  Copyright © 2016年 zyan. All rights reserved.
//

#ifndef singleTool_h
#define singleTool_h

#define singleToolH(name)  + (instancetype)share##name;

#define singleToolM(name)\
static id _zone;\
+ (instancetype)allocWithZone:(struct _NSZone *)zone{\
    static dispatch_once_t onceToken;\
    dispatch_once(&onceToken, ^{\
        _zone = [super allocWithZone:zone];\
    });\
    return _zone;\
}\
+ (instancetype)shareName{\
    static dispatch_once_t onceToken;\
    dispatch_once(&onceToken, ^{\
        _zone = [[super alloc]init];\
    });\
    return _zone;\
}\
- (instancetype)init{\
    static dispatch_once_t onceToken;\
    dispatch_once(&onceToken, ^{\
        _zone = [super init];\
    });\
    return _zone;\
}\
- (id)copyWithZone:(NSZone *)zone{\
    return _zone;\
}

#endif /* singleTool_h */
