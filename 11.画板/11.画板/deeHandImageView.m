//
//  deeHandImageView.m
//  11.画板
//
//  Created by Dee on 15/4/28.
//  Copyright (c) 2015年 zjsruxxxy7. All rights reserved.
//

#import "deeHandImageView.h"

#import "UIImage+UIImageTools.h"
@interface deeHandImageView()

@property(nonatomic,weak) UIImageView *imageView;

@end
@implementation deeHandImageView
-(instancetype)initWithFrame:(CGRect)frame
{
    
    self=  [super initWithFrame:frame];
    if (self) {
        //添加uiimageView
        [self addIamgeView];
        
        //添加手势
        [self addGestureRecognizers];
        
    }
    return self;
    
}
-(void)addGestureRecognizers
{
    //长按
    UILongPressGestureRecognizer *longpress =[[UILongPressGestureRecognizer alloc]initWithTarget:self action:@selector(longPress:)];
        [_imageView addGestureRecognizer:longpress];
}

-(void)longPress:(UILongPressGestureRecognizer*)longPress
{
    if (longPress.state == UIGestureRecognizerStateEnded) {
       
       [UIView animateWithDuration:.5 animations:^{
       
            _imageView.alpha = .3;
       }completion:^(BOOL finished) {
        
           [UIView animateWithDuration:.5 animations:^{
              
               
               _imageView.alpha =1;
               
           }completion:^(BOOL finished) {
               //1.截屏
               UIImage*newimage = [UIImage imageWithCaptureView:self ];
               //2.把图片传到控制器
               _block(newimage);
               //3.把自己移除父控件
               [self removeFromSuperview];
           }];
           
           
       }];
       
    }
}


-(void)setImage:(UIImage *)image
{
    _image =image;
    _imageView.image =image;
    
}
-(void)addIamgeView
{
    UIImageView *imageView =[[UIImageView alloc]initWithFrame:self.bounds];
    imageView.userInteractionEnabled = YES;
    _imageView = imageView;
    [self addSubview:imageView];
    
}



@end
