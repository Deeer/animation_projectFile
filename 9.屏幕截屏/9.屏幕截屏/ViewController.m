//
//  ViewController.m
//  9.屏幕截屏
//
//  Created by Dee on 15/4/25.
//  Copyright (c) 2015年 zjsruxxxy7. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+UIImageTools.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //开启上下文
    UIImage *image =[UIImage imageNamed:@"a.png"];
    
    UIGraphicsBeginImageContextWithOptions(image.size, NO, 0.0);
    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, image.size.width, image.size.height)];
    [path addClip];
    
    [image drawAtPoint:CGPointMake(0,0)];

    UIImage *new = UIGraphicsGetImageFromCurrentImageContext();
     UIGraphicsEndImageContext();
    
    _imageView.image =new;

    
    
    
    
}

-(void)back
{
    UIImage *image =[UIImage imageWithCaptureView:self.view];
    
    NSData *DATE =UIImagePNGRepresentation(image);
    [DATE writeToFile:@"/Users/zjsruxxxy6/Desktop/ooo.png" atomically:YES];
    

}
-(void)viewClip
{
    
    UIGraphicsBeginImageContextWithOptions(self.view.bounds.size, NO, .0);
    CGContextRef context = UIGraphicsGetCurrentContext();
    //渲染控制器view的图层到上下文
    //图层只能渲染，不能用draw
    
    [self.view.layer renderInContext:context];
    
    //获取截屏图片
    
    UIImage *newImage =UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
