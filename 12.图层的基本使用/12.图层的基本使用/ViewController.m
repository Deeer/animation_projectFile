//
//  ViewController.m
//  12.图层的基本使用
//
//  Created by Dee on 15/4/28.
//  Copyright (c) 2015年 zjsruxxxy7. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *deeView;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   
    
    
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
//    _deeView.layer.transform =CATransform3DMakeRotation(M_PI, 0, 0, 1);
//
    [UIView animateWithDuration:1 animations:^{
    
//        _imageView.layer.transform = CATransform3DMakeRotation(M_PI, 0, 1, 0);
//        _imageView.layer.transform = CATransform3DMakeTranslation(200, 200, 0);
//        _imageView.layer.transform = CATransform3DMakeScale(.5, .5, 1);
        
        NSValue *rotation =[NSValue valueWithCATransform3D:CATransform3DMakeRotation(M_PI, 1, 1, 0)];
        
//        [_imageView.layer setValue:rotation forKeyPath:@"transform"];
//        [_imageView.layer setValue:@M_PI forKeyPath:@"transform.rotation"];
        
        
        [_imageView.layer setValue:@.5 forKeyPath:@"transform.scale"];
        
        NSValue *value =[NSValue valueWithCGPoint:CGPointMake(200, 200)];
        
        [ _imageView.layer setValue:value forKeyPath:@"transform.translation"];
        
        
    }];

    
    
    
}

-(void)imageLayer
{
    _imageView.layer.cornerRadius = 50;
    _imageView.layer.masksToBounds =YES;
    
    _imageView.layer.borderColor = [UIColor orangeColor].CGColor;
    _imageView.layer.borderWidth =5;
    
}
-(void)Layer
{
    _deeView.layer.shadowOpacity =1;
    _deeView.layer.shadowColor = [UIColor orangeColor].CGColor;
    _deeView.layer.shadowRadius =10;
    _deeView.layer.cornerRadius =50;
    _deeView.layer.borderColor = [UIColor whiteColor].CGColor;
    _deeView.layer.borderWidth =5;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
