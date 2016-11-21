//
//  GreenView.m
//  事件传递
//
//  Created by DaVinci on 2016/11/21.
//  Copyright © 2016年 mp. All rights reserved.
//

#import "GreenView.h"
@interface GreenView ()
@end

@implementation GreenView



- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"%@",NSStringFromClass([self class]));
    [super touchesBegan:touches withEvent:event];
}


@end
