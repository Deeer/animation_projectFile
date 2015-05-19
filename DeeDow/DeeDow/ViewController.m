//
//  ViewController.m
//  DeeDow
//
//  Created by Dee on 15/4/25.
//  Copyright (c) 2015年 zjsruxxxy7. All rights reserved.
//

#import "ViewController.h"
#import "deeProgress.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet deeProgress *progerssView;

@end

@implementation ViewController
- (IBAction)valueChage:(UISlider*)sender {
    
    _progerssView.progress =sender.value;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
