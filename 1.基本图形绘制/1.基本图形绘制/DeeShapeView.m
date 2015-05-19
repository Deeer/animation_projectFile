//
//  DeeShapeView.m
//  1.基本图形绘制
//
//  Created by Dee on 15/4/24.
//  Copyright (c) 2015年 zjsruxxxy7. All rights reserved.
//

#import "DeeShapeView.h"

@interface DeeShapeView ()

@property (nonatomic,weak)UILabel*label;

@end

@implementation DeeShapeView
-(UILabel *)label
{
    
    if (_label ==nil) {
        UILabel *label = [[UILabel alloc]init];
        _label = label;
    }
    
    return _label;
    
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
 /*
    CGContextRef context= UIGraphicsGetCurrentContext();
    CGPoint point =CGPointMake(120, 120);
    CGFloat start = 0;
    CGFloat radius =50;
    CGFloat end = M_PI;
//    clockwise顺时针或者逆时针
    //arc
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:point radius:radius startAngle:start endAngle:end clockwise:YES];
    path.lineWidth =30;
    CGContextAddPath(context, path.CGPath);
    CGContextStrokePath(context);
  */
    
    
//    [self drawRound];
    
    
    
    
    
    
    
}
-(void)drawDirctor
{
    
    
    UIBezierPath *path =[UIBezierPath bezierPath];
    
    path.lineWidth = 10;
    [path moveToPoint:CGPointZero];
    [path addLineToPoint:CGPointMake(100, 100)];
    
    
    [[UIColor colorWithRed:0.3 green:.5 blue:.8 alpha:1]set] ;
    [path stroke];

}

-(void)drawArc
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    //arc圆弧
    CGPoint center = CGPointMake(120, 120);
    UIBezierPath *path =[UIBezierPath bezierPathWithArcCenter:center radius:100 startAngle:0  endAngle:M_PI*2 clockwise:YES];
    CGContextAddPath(context, path.CGPath);
    CGContextStrokePath(context);
}

-(void)drawRound
{
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(10, 10, 100, 100)];
    [path closePath];
    
//    CGContextDrawPath(ctx, kCGPathFillStroke);
    CGContextAddPath(ctx, path.CGPath);
    CGContextStrokePath(ctx);
    
}
-(void)drawAndFill1
{
    
    
    CGContextRef cont =UIGraphicsGetCurrentContext();
    UIBezierPath *path = [UIBezierPath bezierPath];

    [path moveToPoint:CGPointMake(10, 20)];
    [path addLineToPoint:CGPointMake(40, 60)];
    [path addLineToPoint:CGPointMake(120, 49)];
    [path closePath];
    
    [[UIColor orangeColor] setFill];
    [[UIColor greenColor] setStroke];
    CGContextSetLineWidth(cont, 12);
    
    CGContextAddPath(cont, path.CGPath);
    //    CGContextStrokePath(cont);//strok和fill不能同时使用，如果使用stroke，那么fillpath就没有效果
    //    CGContextFillPath(cont);
    
    
    

}


@end
