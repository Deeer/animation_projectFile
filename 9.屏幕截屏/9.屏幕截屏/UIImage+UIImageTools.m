//
//  UIImage+UIImageTools.m
//  9.屏幕截屏
//
//  Created by Dee on 15/4/25.
//  Copyright (c) 2015年 zjsruxxxy7. All rights reserved.
//

#import "UIImage+UIImageTools.h"

@implementation UIImage (UIImageTools)

+(instancetype)imageWithName:(NSString *)name border:(CGFloat)border borderColor:(UIColor *)color
{
    
    
    
    CGFloat aborder = border;//设置环的宽度
    UIImage *imge=[UIImage imageNamed:name];//获取图片
    
    CGFloat imgW = imge.size.width+aborder*2;//设置外边框大小
    CGFloat imgH = imge.size.height+aborder*2;
    
    CGFloat cycleW = imgW > imgH?imgH:imgW;//判断裁剪范围
    //    UIGraphicsBeginImageContext(CGSizeMake(cycleW, cycleW));
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(cycleW, cycleW), NO, .0);//获取上下文
    
    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, cycleW, cycleW)];//绘制路径
    
    CGContextRef context =UIGraphicsGetCurrentContext();//获取当前的上下文
    CGContextAddPath(context, path.CGPath);//渲染
    [color set];//设置渲染方式
    
    CGContextFillPath(context);
    
    CGRect clipR  = CGRectMake(aborder, aborder,imge.size.width, imge.size.height);
    UIBezierPath *clipPath = [UIBezierPath bezierPathWithOvalInRect:clipR];
    [clipPath addClip];
    [imge drawAtPoint:CGPointMake(aborder, aborder)];
    
    UIImage *newimage =UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return newimage;
}
+(void)imageWithimageName:(NSString *)name addWaterMark:(NSString *)watermark SavePath:(NSString *)path
{
    UIImage *image = [UIImage imageNamed:name];
    
    //参数一：新的图片大小  参数二：yes 不透明 no 透明
    UIGraphicsBeginImageContextWithOptions(image.size,NO, 0.0);//创建上下文
    [image drawAtPoint:CGPointZero];
    
    
    
    //文字
    NSString *text =watermark;
    //将文字属性添加到一个字典中
    NSDictionary *dict = @{NSFontAttributeName:[UIFont systemFontOfSize:15],NSForegroundColorAttributeName:[UIColor redColor]};
    
    [text drawAtPoint:CGPointMake(150, 150) withAttributes:dict];
    
    
    
    //获取新的图片
    UIImage *newimage =UIGraphicsGetImageFromCurrentImageContext();//获取当前上下文，返回一个新的图片
    
    
    //关闭上下文
    UIGraphicsEndImageContext();
    NSLog(@"aaaa");
    
    //1.将图片转换为二进制流
    //2.将二进制流写入指定文件
    //UIImageJPEGRepresentation 参数一:uiview 参数二：图片质量
    NSData *data =UIImageJPEGRepresentation(newimage, 0);
    //将图片转换为png的二进制数据
    //    NSData *data =UIImagePNGRepresentation(newimage);
    //写入桌面
    if ([data writeToFile:path atomically:YES]) {
        NSLog(@"success");
    }

   
    //    return newimage;
}

+(instancetype)imageWithCaptureView:(UIView *)view
{
    UIGraphicsBeginImageContextWithOptions(view.bounds.size, NO, .0);
    CGContextRef context = UIGraphicsGetCurrentContext();
    //渲染控制器view的图层到上下文
    //图层只能渲染，不能用draw
    
    [view.layer renderInContext:context];
    
    //获取截屏图片
    
    UIImage *newImage =UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
//    NSData *DATE =UIImagePNGRepresentation(newImage);
//    [DATE writeToFile:@"/Users/zjsruxxxy6/Desktop/das.png" atomically:YES];
    
    return newImage;
}

@end
