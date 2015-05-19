//
//  PresentedViewController.h
//  转场
//
//  Created by Dee on 15/4/27.
//  Copyright (c) 2015年 zjsruxxxy7. All rights reserved.
//

#import "ViewController.h"
@class PresentedViewController;
@protocol PresentedVCDelegat <NSObject>

-(void)didPresentedVC:(PresentedViewController*)viewController;

@end


@interface PresentedViewController : ViewController
@property(weak,nonatomic)id<PresentedVCDelegat> delegate;
@end
