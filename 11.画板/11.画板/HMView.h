//
//  HMView.h
//  11.画板
//
//  Created by Dee on 15/4/27.
//  Copyright (c) 2015年 zjsruxxxy7. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HMView : UIView
@property (nonatomic,assign) CGFloat width;
@property (nonatomic,strong)UIColor *color;
@property (nonatomic,strong)UIImage *image;
-(void)clearScreen;
-(void)undo;
@end
