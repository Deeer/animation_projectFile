//
//  ViewController.m
//  5.模仿UIimagerView
//
//  Created by Dee on 15/4/25.
//  Copyright (c) 2015年 zjsruxxxy7. All rights reserved.
//

#import "ViewController.h"
#import "DeeimageView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    DeeimageView *image = [[DeeimageView alloc]initWithFrame:CGRectMake(30,30, 100, 100)];
    image.image =[UIImage imageNamed:@"fa.jpeg"];
    [self.view addSubview:image];
    NSLog(@"a");
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
