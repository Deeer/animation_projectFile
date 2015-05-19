//
//  ViewController.m
//  11.画板
//
//  Created by Dee on 15/4/26.
//  Copyright (c) 2015年 zjsruxxxy7. All rights reserved.
//

#import "ViewController.h"
#import "HMView.h"
#import "deeHandImageView.h"

@interface ViewController ()<UINavigationControllerDelegate,UIImagePickerControllerDelegate>
@property (weak, nonatomic) IBOutlet HMView *paintVoew;

@end

@implementation ViewController
- (IBAction)clearAll:(id)sender {
    
    [_paintVoew clearScreen];
}

- (IBAction)Undo:(id)sender {
    
    [_paintVoew undo];
}
- (IBAction)eraser:(id)sender {
    _paintVoew.color =[UIColor whiteColor];

}
- (IBAction)selectPicture:(id)sender {
    
    
    //去用户的相册
    UIImagePickerController *piacker= [[UIImagePickerController alloc]init];
    
    //数据源
    
    piacker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    
    [self presentViewController:piacker animated:YES completion:nil];
    
    
    piacker.delegate =self;
    
}

//选中照片的时候调用
-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    
    UIImage *image =info[UIImagePickerControllerOriginalImage];
    
    deeHandImageView *handView= [[deeHandImageView alloc]initWithFrame:self.paintVoew.frame];
    handView.block =^(UIImage*image){
        
        
        _paintVoew.image=image;
    };
    
    handView.image = image;
    [self.view addSubview:handView];
    [self dismissViewControllerAnimated:YES completion:nil];
    
   
    
    
}
- (IBAction)save:(id)sender {
    //把画板截屏
    
    //开启上下文
    UIGraphicsBeginImageContextWithOptions(_paintVoew.bounds.size, NO, .0);
    CGContextRef ctx = UIGraphicsGetCurrentContext();//获取当前上下文
     //把画板的内容渲染到上下文
    [_paintVoew.layer renderInContext:ctx];
    //获取新的图片
    UIImage *newimg  = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();//关闭上下文
    
    
    UIImageWriteToSavedPhotosAlbum(newimg, self, @selector(image:didFinishSavingWithError:contextInfo:), nil);
    
    
    
}

  - (void)image:(UIImage *)image didFinishSavingWithError:(NSError *)error contextInfo:(void *)contextInfo
{
    
    if (error) {
        NSLog(@"error");
    }else
    {
        NSLog(@"success");
    }
    
}

- (IBAction)valueChange:(UISlider*)sender {
    
    _paintVoew.width =sender.value;
    
}
- (IBAction)colorClick:(UIButton*)sender {
    
    _paintVoew.color =sender.backgroundColor;
    
    
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
