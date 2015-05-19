//
//  UIImage+UIImageTools.h
//  9.屏幕截屏
//
//  Created by Dee on 15/4/25.
//  Copyright (c) 2015年 zjsruxxxy7. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (UIImageTools)
+(instancetype)imageWithName:(NSString*)name border:(CGFloat)border borderColor:(UIColor*)color;

+(void)imageWithimageName:(NSString*)name addWaterMark:(NSString*)watermark SavePath:(NSString*)path;
+(instancetype)imageWithCaptureView:(UIView*)view;

@end
