//
//  MagentaView.m
//  事件传递
//
//  Created by DaVinci on 2016/11/21.
//  Copyright © 2016年 mp. All rights reserved.
//

#import "MagentaView.h"

@interface MagentaView ()
@property(nonatomic,weak)IBOutlet UIView *greenView;
@property(nonatomic,weak)UIButton *btn;
@end

@implementation MagentaView

- (void)awakeFromNib
{
    [super awakeFromNib];
    UIButton *btn = [[UIButton alloc]init];
    [btn setTitle:@"TouchMe!" forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor lightGrayColor];
    btn.alpha = 0.7;
    btn.frame = CGRectMake(30, 30, 60, 20);
    btn.titleLabel.font = [UIFont systemFontOfSize:10];
    [btn addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:btn];
    _btn = btn;
}

- (void)click:(UIButton *)button
{
    NSLog(@"点我了");
}

 - (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
 {
    NSLog(@"%@",NSStringFromClass([self class]));
     [super touchesBegan:touches withEvent:event];
 }

//- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
//{   NSLog(@"before--%@",NSStringFromCGPoint(point));
//    CGPoint greenPoint = [self convertPoint:point toView:_greenView];
//    NSLog(@"after--%@",NSStringFromCGPoint(greenPoint));
//    NSLog(@"greenView.frame = %@",NSStringFromCGPoint(_greenView.frame.origin));
//    if (CGRectContainsPoint(_greenView.frame, greenPoint)) {
//        
//        return _greenView;
//    }
//    
//    return [super hitTest:point withEvent:event];
//}

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
{   NSLog(@"before--%@",NSStringFromCGPoint(point));
    CGPoint greenPoint = [self convertPoint:point toView:_greenView];
    NSLog(@"after--%@",NSStringFromCGPoint(greenPoint));
    CGPoint btnPoint = [self convertPoint:point toView:_btn];
    if ([_btn pointInside:btnPoint withEvent:event]) {
        
        return _btn;
    }
    if ([_greenView pointInside:greenPoint withEvent:event]) {
        
        return _greenView;
    }
    
    return [super hitTest:point withEvent:event];
}

@end
