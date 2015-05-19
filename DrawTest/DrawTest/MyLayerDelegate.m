//
//  MyLayerDelegate.m
//  DrawTest
//
//  Created by Dee on 15/4/27.
//  Copyright (c) 2015年 zjsruxxxy7. All rights reserved.
//

#import "MyLayerDelegate.h"
#import <UIKit/UIKit.h>

@implementation MyLayerDelegate
-(void)drawLayer:(CALayer *)layer inContext:(CGContextRef)ctx
{
    
    UIGraphicsPushContext(ctx);
    UIBezierPath *p =[UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, 100, 100)];
    [[UIColor blueColor] setFill];
    [p fill];
    UIGraphicsPopContext();
    
    
}



@end
