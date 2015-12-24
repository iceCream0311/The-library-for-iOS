//
//  ViewController.m
//  Codelibrary
//
//  Created by 赵岩 on 15/12/6.
//  Copyright © 2015年 zyan. All rights reserved.
//

#import "ViewController.h"
#import "NSString+YANExtension.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    NSString *date = [NSString getCurrentDate];
//    NSLog(@"%@",date);
    NSString *string = [NSString getTheCurrentTimeDescription:@"2015-12-24-15-03-15"];
    NSLog(@"%@",string);
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
