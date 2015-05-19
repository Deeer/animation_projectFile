//
//  ViewController.m
//  13.自定义图层
//
//  Created by Dee on 15/4/28.
//  Copyright (c) 2015年 zjsruxxxy7. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic,strong)CALayer *layer;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    _layer= [CALayer layer];
    
    _layer.backgroundColor = [UIColor redColor].CGColor;
    _layer.bounds =CGRectMake(00, 0, 200, 200);
    _layer.position =CGPointMake(200, 200);
//    _layer.contents =(__bridge id)([UIImage imageNamed:@"阿狸头像"].CGImage);
    
    
    [self.view.layer addSublayer:_layer];
    
    
    
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    
    UITouch *touch = [touches anyObject];
    CGPoint pos = [touch locationInView:self.view];
    
    //开启事务
    [CATransaction begin];
    
    
//    [CATransaction setDisableActions:YES];//取消隐式动画
    _layer.position = CGPointMake(100, 100);
    _layer.borderColor =[UIColor grayColor].CGColor;
    _layer.cornerRadius = arc4random_uniform(50);
    _layer.borderWidth = arc4random_uniform(5) +1;
    CGFloat r = arc4random_uniform(256)/255.0;
    CGFloat g = arc4random_uniform(256)/255.0;
    CGFloat b = arc4random_uniform(256)/255.0;
    _layer.backgroundColor = [UIColor colorWithRed:r green:g blue:b alpha:1].CGColor;
    _layer.position =pos;
    
    //取消隐式动画
    [CATransaction commit];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
