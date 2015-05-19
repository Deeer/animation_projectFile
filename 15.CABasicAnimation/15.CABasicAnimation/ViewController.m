//
//  ViewController.m
//  15.CABasicAnimation
//
//  Created by Dee on 15/4/29.
//  Copyright (c) 2015年 zjsruxxxy7. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic,strong) CALayer *layer;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    CALayer*layer =[CALayer layer];
    layer.position = CGPointMake(100, 100);
    layer.bounds = CGRectMake(0, 0, 100, 100);
    layer.backgroundColor =[UIColor orangeColor].CGColor;
    
    [self.view.layer addSublayer:layer];
    _layer =layer;
  
    
    
    
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    CABasicAnimation *animation =[ CABasicAnimation  animation];
    
    animation.keyPath = @"position";//选定更改的属性
    
    animation.toValue =[NSValue valueWithCGPoint:CGPointMake(200, 200)];//设置变化的值
    
    animation.removedOnCompletion = NO;//不要删除动画
    
    animation.fillMode =kCAFillModeForwards;//保持最新的位置
    
    [_layer addAnimation:animation forKey:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
