//
//  ViewController.m
//  事件传递
//
//  Created by DaVinci on 2016/11/21.
//  Copyright © 2016年 mp. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];


}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"%@",NSStringFromClass([self class]));
}

@end
