//
//  RotationPresentAnimation.m
//  转场
//
//  Created by Dee on 15/4/27.
//  Copyright (c) 2015年 zjsruxxxy7. All rights reserved.
//

#import "RotationPresentAnimation.h"
//#import "UIViewControllerAnimatedTranstioniong.h"

#import <UIKit/UIKit.h>
@implementation RotationPresentAnimation


-(NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext
{
    
    return  0.5f;
}//动画过渡时间
-(void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext
{
    UIViewController *toVC =[transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    //使用context得到两个viewcontroller的参照
    
    
    CGRect finalRect =[transitionContext finalFrameForViewController:toVC];
    toVC.view.frame = CGRectOffset(finalRect, 0, -[[UIScreen mainScreen]bounds].size.height);//设置呈现vc的初始位置
    
    [[transitionContext containerView]addSubview:toVC.view];//将view添加到containView中
    
    [UIView animateWithDuration:[self transitionDuration:transitionContext] delay:0.0 usingSpringWithDamping:.6 initialSpringVelocity:.0 options:UIViewAnimationOptionCurveLinear animations:^{
        toVC.view.frame =finalRect;
    } completion:^(BOOL finished) {
        [transitionContext completeTransition:YES];//向context报告vc切换是否完成
    }];//usingSpringWithDamping --UIView动画新的api 描述模拟弹簧动作的动画曲线
    
    

    
}
@end
