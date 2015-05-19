//
//  DeePieView.m
//  DrawTest
//
//  Created by Dee on 15/4/25.
//  Copyright (c) 2015年 zjsruxxxy7. All rights reserved.
//

#import "DeePieView.h"



@implementation DeePieView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code

    //    CGContextFillPath(context);
    
    //加载图片
    
    


    
    

}

-(void)draw
{
    
    CGContextRef context= UIGraphicsGetCurrentContext();
    UIBezierPath *path =[UIBezierPath bezierPathWithArcCenter:CGPointMake(125, 125) radius:100 startAngle:0 endAngle:M_PI/2 clockwise:YES];
    [path addLineToPoint:CGPointMake(125, 125)];
    CGContextAddPath(context, path.CGPath);
    CGContextStrokePath(context);

}


@end
