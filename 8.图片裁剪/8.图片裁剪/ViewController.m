//
//  ViewController.m
//  8.图片裁剪
//
//  Created by Dee on 15/4/25.
//  Copyright (c) 2015年 zjsruxxxy7. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+clipTool.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    _imageView.image =[UIImage imageWithName:@"a.png" border:3 borderColor:[UIColor redColor]];
//    [self clip];
    
}

-(void)clip
{
    
    //加载旧图片
    UIImage *oldImage =[UIImage imageNamed:@"a.png"];
    
    //开启上下文
    UIGraphicsBeginImageContextWithOptions(oldImage.size, NO, .0);
    
    //画圆,正切于矩形
    UIBezierPath *path  =[UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, oldImage.size.width, oldImage.size.height)];
    
    //设为裁剪区域
    [path addClip];
    
    //画图片
    [oldImage drawAtPoint:CGPointMake(0, 0)];
    
    //获取当前上下文，产生新的图片
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    
    
    //关闭上下文
    UIGraphicsEndImageContext();
    
    //图片展示
    _imageView.image = newImage;
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
