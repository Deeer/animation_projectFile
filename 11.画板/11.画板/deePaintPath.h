//
//  deePaintPath.h
//  11.画板
//
//  Created by Dee on 15/4/27.
//  Copyright (c) 2015年 zjsruxxxy7. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface deePaintPath : UIBezierPath
@property (nonatomic,strong)UIColor *color;


+(instancetype)paintPathWithLineWidth:(CGFloat)width color:(UIColor*)color startPoint:(CGPoint)point;

@end
