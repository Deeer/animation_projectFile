//
//  DeeLineView.m
//  1.基本图形绘制
//
//  Created by Dee on 15/4/24.
//  Copyright (c) 2015年 zjsruxxxy7. All rights reserved.
//

#import "DeeLineView.h"

@implementation DeeLineView


-(instancetype)initWithFrame:(CGRect)frame
{
    if (self =[super initWithFrame:frame]) {
        
        
    }
    
    return self;
    
    
}



// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
//当视图第一次显示的时候就会调用
//作用：绘图
//@rect : self.bounds
- (void)drawRect:(CGRect)rect {
    
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    UIBezierPath *path = [UIBezierPath bezierPath];
//    [path moveToPoint:CGPointMake(20, 30)];
//    [path addLineToPoint:CGPointMake(400, 32)];
//    [path addLineToPoint:CGPointMake(30, 330)];
//    CGContextSetLineWidth(context, 10);
//    CGContextSetCMYKStrokeColor(context, 1, 0, 0, 0, 1);
//    CGContextSetRGBStrokeColor(context, 1, 1, 0, 1);
//    CGContextAddPath(context, path.CGPath);
//    CGContextStrokePath(context);
//
    CGContextRef context = UIGraphicsGetCurrentContext();
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(10, 200)];
//    [path addCurveToPoint:CGPointMake(120, 200) controlPoint1:CGPointMake(60, 10) controlPoint2:CGPointMake(20, 39)];
    [path addQuadCurveToPoint:CGPointMake(120, 200) controlPoint:CGPointMake(30, 30)];
    CGContextAddPath(context, path.CGPath);
    CGContextStrokePath(context);
    
    
    
    
    
    
    
    
    
}
-(void)drawLayer3
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    UIBezierPath *path =[UIBezierPath bezierPath];
    CGPoint startPoint =CGPointMake(10, 30);
    CGPoint endPoint = CGPointMake(235, 123);
    CGPoint control = CGPointMake(200, 246);
    [path moveToPoint:startPoint];
    
    [path addQuadCurveToPoint:endPoint controlPoint:control];

    
    //将路径添加到上下文
    CGContextAddPath(context, path.CGPath);
    
    //渲染上下文到视图
    CGContextStrokePath(context);
    
}

-(void)drawLine2
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    UIBezierPath *apath = [UIBezierPath bezierPath];
    
    //    [apath moveToPoint:CGPointMake(10, 125)];
    //    //添加一条线到某个点
    //    [apath addLineToPoint:CGPointMake(230, 125)];
    //
    //    [apath moveToPoint:CGPointMake(10, 10)];
    //    //添加一条线到某个点
    //    [apath addLineToPoint:CGPointMake(125, 100)];
    [apath moveToPoint:CGPointMake(10, 20)];
    [apath addLineToPoint:CGPointMake(100, 100)];
    
    //    apath.lineWidth =20;
    CGContextSetLineWidth(context, 10);
    
    CGContextSetLineCap(context, kCGLineCapButt);//直线样式
    //    CGContextSetRGBStrokeColor(context, 1, 0, 0, 1);
    [[UIColor orangeColor]set];
    
    CGContextAddPath(context, apath.CGPath);
    
    
    CGContextStrokePath(context);
}
-(void)drawLine
{
   
    //获取上下文  CG ： coreGraphics
    //目前的上下文都和UIGraphics有关
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    //    设置绘制路径
    UIBezierPath *path =[UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(10, 10)];
    [path addLineToPoint:CGPointMake(30, 30)];
    [path addLineToPoint:CGPointMake(60, 90)];
    
    
    //把路径添加到上下文
    //path.CGPath将UIKit的路径转换为coreGraphics的路径
    CGContextAddPath(context, path.CGPath);
    
    //把上下文渲染到视图
    CGContextStrokePath(context);
    
}


@end
