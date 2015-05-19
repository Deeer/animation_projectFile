//
//  UIImage+clipTool.m
//  8.图片裁剪
//
//  Created by Dee on 15/4/25.
//  Copyright (c) 2015年 zjsruxxxy7. All rights reserved.
//

#import "UIImage+clipTool.h"

@implementation UIImage (clipTool)
+(instancetype)imageWithName:(NSString *)name border:(CGFloat)border borderColor:(UIColor *)color
{
    
    
    
    CGFloat aborder = border;//设置环的宽度
    UIImage *imge=[UIImage imageNamed:name];//获取图片
    CGFloat imgW = imge.size.width+aborder*2;//设置外边框大小
    CGFloat imgH = imge.size.height+aborder*2;
    CGFloat cycleW = imgW > imgH?imgH:imgW;//判断裁剪范围
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(cycleW, cycleW), NO, .0);//开启上下文
//    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, cycleW, cycleW)];//绘制路径
//    
//    CGContextRef context =UIGraphicsGetCurrentContext();//获取当前的上下文
//    CGContextAddPath(context, path.CGPath);//绘制路径
//    [color set];//设置渲染方式
//    CGContextFillPath(context);
    
    
    CGRect clipR  = CGRectMake(aborder, aborder,imge.size.width, imge.size.height);
    UIBezierPath *clipPath = [UIBezierPath bezierPathWithOvalInRect:clipR];
    [clipPath addClip];
    [imge drawAtPoint:CGPointMake(aborder, aborder)];
    
    
    
    
    
    UIImage *newimage =UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
 
    return newimage;
}

@end
