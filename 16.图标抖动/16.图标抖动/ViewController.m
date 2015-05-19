//
//  ViewController.m
//  16.图标抖动
//
//  Created by Dee on 15/4/29.
//  Copyright (c) 2015年 zjsruxxxy7. All rights reserved.
//

#import "ViewController.h"
#define angle2radian(x) x/180.0*M_PI
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *iamgeView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UILongPressGestureRecognizer *  longPress = [[UILongPressGestureRecognizer alloc]initWithTarget:self action:@selector(longPress:)];
    [_iamgeView addGestureRecognizer:longPress];
    
}
-(void)longPress:(UIGestureRecognizer *)longpress
{
    
    if (longpress.state == UIGestureRecognizerStateBegan) {
    
        CAKeyframeAnimation *anim = [CAKeyframeAnimation animation];
        anim.keyPath = @"transform.rotation";
        anim.values = @[@(angle2radian(-5)),@(angle2radian(5)),@(angle2radian(-5))];
        
        anim.repeatCount =MAXFLOAT;
        
        [_iamgeView.layer addAnimation:anim forKey:nil];
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
