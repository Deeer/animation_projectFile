//
//  draw.m
//  draw
//
//  Created by Dee on 15/5/3.
//  Copyright (c) 2015年 zjsruxxxy7. All rights reserved.
//

#import "draw.h"

@implementation draw


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    
    
    
    
    

    
}
-(void)pathDirector
{
    
    UIBezierPath *path =[UIBezierPath bezierPath];
    [path moveToPoint:CGPointZero];
    [path addLineToPoint:CGPointMake(20, 20)];
    [path addLineToPoint:CGPointMake(300, 300)];
    [path closePath];
    path.lineWidth =10;
    [[UIColor redColor] set];
    [path stroke];
    [self setNeedsDisplay];
    
}
-(void)drawInContext
{
    CGContextRef context =UIGraphicsGetCurrentContext();
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(0, 0)];
    [path addLineToPoint:CGPointMake(100, 100)];
    CGContextAddPath(context, path.CGPath);
    CGContextStrokePath(context);
}


@end
