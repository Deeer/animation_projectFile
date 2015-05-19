//
//  ViewController.m
//  转场
//
//  Created by Dee on 15/4/27.
//  Copyright (c) 2015年 zjsruxxxy7. All rights reserved.
//

#import "ViewController.h"
#import "PresentedViewController.h"

@interface ViewController ()<PresentedVCDelegat>

@end

@implementation ViewController
- (IBAction)present:(id)sender {
    
    
    [self performSegueWithIdentifier:@"sec" sender:self];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    PresentedViewController *pv =segue.destinationViewController;
    pv.delegate =(id)self;
}
-(void)didPresentedVC:(PresentedViewController *)viewController
{
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

@end
