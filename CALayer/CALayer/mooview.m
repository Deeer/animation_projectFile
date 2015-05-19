//
//  mooview.m
//  CALayer
//
//  Created by Dee on 15/5/6.
//  Copyright (c) 2015年 zjsruxxxy7. All rights reserved.
//

#import "mooview.h"

@implementation mooview


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    UIBezierPath *path =[UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(0, 0)];
    [path addLineToPoint:CGPointMake(100, 100)];
    [path stroke];
    
}


@end
