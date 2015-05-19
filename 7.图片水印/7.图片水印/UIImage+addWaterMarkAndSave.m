//
//  UIImage+addWaterMarkAndSave.m
//  7.图片水印
//
//  Created by Dee on 15/4/25.
//  Copyright (c) 2015年 zjsruxxxy7. All rights reserved.
//

#import "UIImage+addWaterMarkAndSave.h"

@implementation UIImage (addWaterMarkAndSave)
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
@end
