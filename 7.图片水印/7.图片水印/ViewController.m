//
//  ViewController.m
//  7.图片水印
//
//  Created by Dee on 15/4/25.
//  Copyright (c) 2015年 zjsruxxxy7. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+addWaterMarkAndSave.h"
@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imahgeViwe;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [UIImage imageWithimageName:@"a.png" addWaterMark:@"dea" SavePath:@"/Users/zjsruxxxy6/Desktop/dee.png"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
