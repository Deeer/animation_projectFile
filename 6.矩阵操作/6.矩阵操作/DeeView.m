//
//  DeeView.m
//  6.矩阵操作
//
//  Created by Dee on 15/4/25.
//  Copyright (c) 2015年 zjsruxxxy7. All rights reserved.
//

#import "DeeView.h"

@implementation DeeView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    CGContextRef context =UIGraphicsGetCurrentContext();
    
    
    //路径必须放在路径上下文操作之后
    //平移
    CGContextTranslateCTM(context, 50, 100);
    CGContextScaleCTM(context, 2, 2);
    
    
    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(-50, -100, 200, 150)];
    
    CGContextAddPath(context, path.CGPath);
    
    [[UIColor orangeColor]set];
    
    CGContextFillPath(context);
    
    
//    UIImage *image =[[UIImage class]init];
//    [image drawInRect:rect];;
}


@end
