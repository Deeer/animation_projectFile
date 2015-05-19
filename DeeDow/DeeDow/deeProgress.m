//
//  deeProgress.m
//  DeeDow
//
//  Created by Dee on 15/4/25.
//  Copyright (c) 2015年 zjsruxxxy7. All rights reserved.
//

#import "deeProgress.h"

@interface deeProgress ()
@property (nonatomic,weak)UILabel *label;

@end

@implementation deeProgress

-(UILabel *)label
{
    
    if (_label == nil) {
        UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(30, 30, 100,100)];
        label.textAlignment =NSTextAlignmentCenter ;
        [self addSubview:label];
        _label =label;
        
    }
    return _label;
}
-(void)setProgress:(CGFloat)progress
{
    _progress = progress;
    
    self.label.text =[NSString stringWithFormat:@"%.2f%%",progress*100];
    
    
    [self setNeedsDisplay];//将这个图层标记为需要刷新，表示当屏幕刷新时，就调用draw函数
    
    
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
 
    CGContextRef context =UIGraphicsGetCurrentContext();
    CGPoint center =CGPointMake(50, 50);
    CGFloat radius = 50;
    CGFloat start = -M_PI_2;
    CGFloat end = -M_PI_2 + _progress * M_PI*2;
    
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:center radius:radius startAngle:start endAngle:end clockwise:YES];
    CGContextAddPath(context, path.CGPath);
    CGContextStrokePath(context);
   
    
    
}

@end
