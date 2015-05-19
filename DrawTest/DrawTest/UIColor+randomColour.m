//
//  UIColor+randomColour.m
//  2.饼图
//
//  Created by Dee on 15/4/25.
//  Copyright (c) 2015年 zjsruxxxy7. All rights reserved.
//

#import "UIColor+randomColour.h"

@implementation UIColor (randomColour)

+(UIColor *)randomColor
{
    CGFloat r = arc4random_uniform(256)/255.0;
    CGFloat g = arc4random_uniform(256)/255.0;
    CGFloat b = arc4random_uniform(256)/255.0;
    
    return [UIColor colorWithRed:r green:g blue:b alpha:1];
    
}

@end
