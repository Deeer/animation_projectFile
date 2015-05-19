//
//  ViewController.m
//  18.动画组
//
//  Created by Dee on 15/4/29.
//  Copyright (c) 2015年 zjsruxxxy7. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIView *redView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    CABasicAnimation *ani1 =[CABasicAnimation animation];
    ani1.keyPath =@"transform.rotation";
    ani1.toValue =@M_PI_2;
    
    CABasicAnimation *ani2 =[CABasicAnimation animation];
    ani2.keyPath =@"position";
    ani2.toValue = [NSValue valueWithCGPoint:CGPointMake(100, 250)];
    
    CABasicAnimation *ani3 =[CABasicAnimation animation];
    ani3.keyPath =@"transform.scale";
    ani3.toValue = @.5;
    
    
    CAAnimationGroup * group =[CAAnimationGroup animation];
    
    //取消反弹
    group.removedOnCompletion =NO;
    group.fillMode= kCAFillModeForwards;
    group.duration =2;
    
    
    group.animations = @[ani1,ani2,ani3];
    
    
    [_redView.layer addAnimation:group forKey:nil];
    
    
    
}

@end
