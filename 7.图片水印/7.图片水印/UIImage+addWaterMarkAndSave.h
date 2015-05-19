//
//  UIImage+addWaterMarkAndSave.h
//  7.图片水印
//
//  Created by Dee on 15/4/25.
//  Copyright (c) 2015年 zjsruxxxy7. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (addWaterMarkAndSave)
+(void)imageWithimageName:(NSString*)name addWaterMark:(NSString*)watermark SavePath:(NSString*)path;
@end
