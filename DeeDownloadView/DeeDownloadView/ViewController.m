//
//  ViewController.m
//  DeeDownloadView
//
//  Created by Dee on 15/4/24.
//  Copyright (c) 2015年 zjsruxxxy7. All rights reserved.
//

#import "ViewController.h"
#import "DeeProgressView.h"
@interface ViewController ()

@property (weak, nonatomic) IBOutlet DeeProgressView *progressView;

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

- (IBAction)calueChage:(UISlider*)sender {
    _progressView.progress =sender.value;
    
}
@end
