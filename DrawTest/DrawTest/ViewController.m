//
//  ViewController.m
//  DrawTest
//
//  Created by Dee on 15/4/25.
//  Copyright (c) 2015年 zjsruxxxy7. All rights reserved.
//

#import "ViewController.h"
#import "MyLayerDelegate.h"
#import "UIColor+randomColour.h"
@interface ViewController ()
{
    CALayer *layer;
}
@property (strong, nonatomic) IBOutlet UIImageView *image;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    layer  = [CALayer layer];
//    layer.anchorPoint =CGPointZero;
//    layer.bounds = self.view.bounds;
//    layer.backgroundColor  = [UIColor redColor].CGColor;
//    [self.view.layer addSublayer:layer];
    
   
    
    
    
    
    
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    layer.backgroundColor  =[UIColor randomColor].CGColor;
    
    
}
-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    layer.backgroundColor  =[UIColor randomColor].CGColor;
}

-(void)print
{
    
    
    UIImage *image =[UIImage imageNamed:@"a.png"];
    //创建一个上下文
    UIGraphicsBeginImageContext(image.size);
    //添加图片
    [image drawAtPoint:CGPointMake(0, 0)];
    //添加文字
    NSString *text =@"Deeer";
    NSDictionary *dict =@{NSFontAttributeName:[UIFont systemFontOfSize:16],NSForegroundColorAttributeName:[UIColor redColor]};
    [text drawAtPoint:CGPointMake(10, 10) withAttributes:dict];
    //获取当前上下文
    UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    _image.image = img;
    
    
    NSData *data =UIImagePNGRepresentation(img);
    [data writeToFile:@"/Users/zjsruxxxy6/Desktop/newImage2.jpeg" atomically:YES];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
