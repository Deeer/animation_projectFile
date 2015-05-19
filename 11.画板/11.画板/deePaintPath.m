//
//  deePaintPath.m
//  11.画板
//
//  Created by Dee on 15/4/27.
//  Copyright (c) 2015年 zjsruxxxy7. All rights reserved.
//

#import "deePaintPath.h"

@implementation deePaintPath

+(instancetype)paintPathWithLineWidth:(CGFloat)width color:(UIColor *)color startPoint:(CGPoint)point
{
    
    deePaintPath *path = [[self alloc]init];
    path.lineWidth =width;//父类成员变量
    path.color =color;//子类成员变量
    [path moveToPoint:point];
    return path;
}

@end
