//
//  ViewController.m
//  17.转场动画
//
//  Created by Dee on 15/4/29.
//  Copyright (c) 2015年 zjsruxxxy7. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (nonatomic,assign) int index;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

        _index=1;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
//    NSLog(@"%d",_index);
    _index++;
    if (_index ==4) {
        _index =1;
    }
    NSString *str = [NSString stringWithFormat:@"%d",_index];

    _imageView.image  = [UIImage imageNamed:str];
    
    
    CATransition *aim = [CATransition animation];
//    aim.type = @"cube";
//    fade', `moveIn', `push' and `reveal
//    aim.type = @"pageCurl";
     aim.type = @"rippleEffect";
    aim.duration =2;
    [_imageView.layer addAnimation:aim forKey:nil];
    
   
}

@end
