//
//  ViewController.m
//  CALayer
//
//  Created by Dee on 15/5/4.
//  Copyright (c) 2015年 zjsruxxxy7. All rights reserved.
//

#import "ViewController.h"
#import "ReflectionView.h"
#import <QuartzCore/QuartzCore.h>
@interface ViewController ()
{
    CGFloat process;
    
}
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@property (weak, nonatomic) IBOutlet UIView *viewLayer;
@property (weak, nonatomic) IBOutlet UIView *viewLayer2;


@end

@implementation ViewController

- (IBAction)changeValue:(UISlider*)sender {
    
    process= sender.value;
}

-(void)addSpriteImage:(UIImage *)image withContextRect:(CGRect)rect toLayer:(CALayer*)layer
{
    
    layer.contents =(__bridge id)(image.CGImage);
    layer.contentsGravity = kCAGravityResizeAspect;
    layer.contentsRect = rect;
    
    
    
}

-(void)addStrethchableImage:(UIImage*)image withContentCenter:(CGRect)rect tolayer:(CALayer*)layer
{
    layer.contents =  (__bridge id)image.CGImage;
    layer.contentsCenter =rect;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.viewLayer2.layer.delegate= self;
    
//    self.viewLayer2.alpha= 0;
    
    
#pragma mark - 裁剪
/**
     *  裁剪只显示某一块
     
//    [self addSpriteImage:image withContextRect:CGRectMake(0, 0, .5, .5) toLayer:self.viewLayer.layer];
    
//    [self addSpriteImage:image withContextRect:CGRectMake(0, 0, 1,1) toLayer:self.viewLayer.layer];
*/
#pragma mark - 拉伸
/**
     *  拉伸某一块
     
//    [self addStrethchableImage:image withContentCenter:CGRectMake(.25, .25, .5, .5) tolayer:self.viewLayer2.layer];
*/
#pragma delegate
/**
     *  CALayerdelegate
     
    
//    CALayer *blueLayer =[CALayer layer];
//    blueLayer.frame =CGRectMake(50.0f, 50.0f, 100.0f, 100.0f);
//    blueLayer.backgroundColor =[UIColor blueColor].CGColor;
//    blueLayer.delegate =self;
//    blueLayer.contentsScale=[UIScreen mainScreen].scale;
////    self.viewLayer.clipsToBounds=YES;
//    [self.viewLayer.layer addSublayer:blueLayer];
//    blueLayer.cornerRadius =10;
////    blueLayer.masksToBounds = YES;
//    [blueLayer display];
    
//    blueLayer.mask
    
  */
/*
 CALayer *layer = [CALayer layer];
 //    layer.frame = CGRectMake(0, 0, 100, 100);
 layer.delegate =self;
 [self.viewLayer.layer addSublayer:layer];
 [layer setNeedsDisplay];
 
 */
#pragma mark - CATransForm
/*

//    CALayer *blueLayer =[CALayer layer];
//    blueLayer.frame= CGRectMake(50.0f, 50.0f, 100.0f, 100.0f);
//    
//    [self.view.layer addSublayer:blueLayer];
//    CGAffineTransform transForm = CGAffineTransformIdentity;
    
    
    
    
//    CATransform3D persective =CATransform3DIdentity;
//    self.viewLayer.layer.contents =(__bridge id)image.CGImage;
//    self.viewLayer2.layer.contents= (__bridge id)image.CGImage;
//    persective.m34  =-1/500.0;
//    self.viewLayer.layer.sublayerTransform =persective;
//    CATransform3D transform1 = CATransform3DMakeRotation(M_PI_4, 0, 1,0);
//    self.viewLayer.layer.transform = transform1;
//
*/
#pragma mark - CAShaperLayer
/*
    UIBezierPath *path =[[UIBezierPath alloc]init];
    [path moveToPoint:CGPointMake(175, 100)];
    
    [path addArcWithCenter:CGPointMake(150, 100) radius:25 startAngle:0 endAngle:2*M_PI clockwise:YES];
    [path moveToPoint:CGPointMake(150,125)];
    [path addLineToPoint:CGPointMake(150, 175)];
    [path addLineToPoint:CGPointMake(125, 225)];
    [path moveToPoint:CGPointMake(150, 175)];
    [path addLineToPoint:CGPointMake(175, 225)];
    [path moveToPoint:CGPointMake(100, 150)];
    [path addLineToPoint:CGPointMake(200, 150)];
    
    CAShapeLayer *shapeLayer =[CAShapeLayer layer];
    shapeLayer.strokeColor =[UIColor redColor].CGColor;
    shapeLayer.fillColor =[UIColor clearColor].CGColor;
    shapeLayer.lineWidth =10;
    shapeLayer.lineJoin = kCALineJoinMiter;
    shapeLayer.lineCap= kCALineCapRound;
    shapeLayer.path =path.CGPath;
    
    [self.viewLayer2.layer addSublayer:shapeLayer];
    
    
    CGRect rect = CGRectMake(0, 0, 100, 100);
    CGSize rad  =  CGSizeMake(process, 0);
    UIRectCorner corner =UIRectCornerTopRight|UIRectCornerTopLeft
    |UIRectCornerBottomLeft;
    
    UIBezierPath *path2 = [UIBezierPath bezierPathWithRoundedRect:rect byRoundingCorners:corner cornerRadii:rad];
    CAShapeLayer*layer = [CAShapeLayer layer];
    layer.path =path2.CGPath;

//    shapeLayer.masksToBounds = YES;
    [self.viewLayer.layer addSublayer:layer];
    
//    [self.viewLayer.layer display];
  */
#pragma mark --CATextLayer
/*
    CATextLayer *textLayer= [CATextLayer layer];//创建textLayer
    textLayer.frame  = self.viewLayer.bounds;//设置对应的bounds

    
    //设置textLayer 文字属性
    textLayer.foregroundColor =[UIColor redColor].CGColor;//在设置字体颜色的时候使用前景色
//    textLayer.backgroundColor =[UIColor grayColor].CGColor;
    textLayer.alignmentMode = kCAAlignmentCenter;//居中对齐
    textLayer.wrapped = YES;//默认是no 如果为yes 会自动fit于layer的bounds
    
    
    
    UIFont *font =[UIFont systemFontOfSize:50];//设置字体尺寸
    CFStringRef name = (__bridge CFStringRef)(font.fontName);//通过font得到对应的 字体名称
    CGFontRef fontRef =CGFontCreateWithFontName(name);//通过font名称创建CGFontRef
    //以上就讲UIFont转变为CGFontRef属性
    
    
    
    
    textLayer.font = fontRef;
    textLayer.fontSize =font.pointSize;
    CGFontRelease(fontRef);
    NSString *text =@"llallalla";
    textLayer.string = text;
//    textLayer.contentsScale =[UIScreen mainScreen].scale;
    
    
    [self.viewLayer2.layer addSublayer:textLayer];
    
    
    
    CAGradientLayer *graLayer =[CAGradientLayer layer];
    graLayer.frame = self.viewLayer.bounds;
    [self.viewLayer.layer addSublayer:graLayer];
    graLayer.colors =@[(__bridge id)[UIColor redColor].CGColor,(__bridge id)[UIColor blueColor].CGColor];
    graLayer.locations =@[@.0,@.25,@.5];
    graLayer.startPoint =CGPointZero;
    graLayer.endPoint = CGPointMake(1, 1);
  */
#pragma mark - CAReplicator
/*
    self.viewLayer2.alpha =0;
    CAReplicatorLayer *replicator = [CAReplicatorLayer layer];
    replicator.frame = self.viewLayer.bounds;
    [self.viewLayer.layer addSublayer:replicator];
    
    replicator.instanceCount = 11;//创建实例个数
    CATransform3D transform = CATransform3DIdentity;//
    transform =CATransform3DTranslate(transform, 0, 200, 0);
    transform =CATransform3DRotate(transform, M_PI/5.0, 0 , 0, 1);
    transform =CATransform3DTranslate(transform, 0, -200, 0);//设置图层的transform属性
    
    
    replicator.instanceTransform = transform;//将transform属性赋值给实例的transform属性
    replicator.instanceBlueOffset =-.1;//设置图层实例的颜色变化
    replicator.instanceGreenOffset =-.1;
    
    
    
    CALayer *layer = [CALayer layer];
    layer.frame = CGRectMake(100.0f, 100.0f, 100.0f, 100.0f);
    layer.backgroundColor = [UIColor whiteColor].CGColor;
    
    [replicator addSublayer:layer];
    //note ：创建一个白色图层，通过CAReplicatorLayer图层生成多个实例图层
   */
#pragma mark - CAReplicator-倒影
   /*
    UIImage*image = [UIImage imageNamed:@"a"];
    ReflectionView *dview =[[ReflectionView alloc]initWithFrame:self.viewLayer.bounds];
    [dview addSubview: [[UIImageView alloc] initWithImage:image ]];
    dview.frame =  CGRectMake(0, 0, 300, 300);
    [self.view addSubview:dview];
    */
#pragma mark - CATileLayer
 /*
//    CATiledLayer *tileLayer= [CATiledLayer layer];
//    tileLayer.frame= CGRectMake(0, 0, 200, 200);
//    tileLayer.delegate = self;
//    [self.scrollView.layer addSublayer:tileLayer];
//    self.scrollView.contentSize = tileLayer.frame.size;
//    self.scrollView.backgroundColor =[UIColor grayColor];
//    [tileLayer setNeedsDisplay];
//    
//    NSLog(@"%@",NSStringFromCGRect(self.view.frame));
*/
#pragma mark - bezierPathanimation
    //create a path;
    UIBezierPath *path =[UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(0, 150)];
    [path addCurveToPoint:CGPointMake(200, 150) controlPoint1:CGPointMake(75, 0) controlPoint2:CGPointMake(225, 300)];
   
    //draw the path using a CAShapeLayer
    CAShapeLayer *layer = [CAShapeLayer layer];
    layer.path =path.CGPath;
    layer.fillColor =[UIColor clearColor].CGColor;
    layer.strokeColor =[UIColor redColor].CGColor;
    layer.lineWidth = 3.0f;
    [self.viewLayer2.layer addSublayer:layer];
    
    //add a ship by using a CALayer
    CALayer *shipLayer =[CALayer layer];
    shipLayer.frame =CGRectMake(0, 0, 20, 20);
    shipLayer.position = CGPointMake(0, 150);
    shipLayer.contents =(__bridge id)[UIImage imageNamed:@"a.png"].CGImage;
    [self.viewLayer2.layer addSublayer:shipLayer];
    
    //create a keyframe animation
    CAKeyframeAnimation *amimation =[CAKeyframeAnimation animation];
    amimation.keyPath =@"position";

    amimation.removedOnCompletion = NO;
    amimation.fillMode=kCAFillModeForwards;
    amimation.duration =4.0;
    amimation.path = path.CGPath;//动画路径
    [shipLayer addAnimation:amimation forKey:nil];
    
    
    
    
    
   
    
}
//-(void)displayLayer:(CALayer *)layer
//{
//
//    NSLog(@"qqqq");
//
//}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    CGPoint point =[[touches anyObject]locationInView:self.view];
    CALayer *layer= [self.view.layer hitTest:point];
    if (layer ==self.viewLayer.layer) {
        NSLog(@"222");
    }
    
    
}
-(void)drawLayer:(CATiledLayer *)layer inContext:(CGContextRef)ctx
{
    /*
    NSLog(@"asd");
    CGContextSetLineWidth(ctx, 10.0f);
    CGContextSetStrokeColorWithColor(ctx, [UIColor redColor].CGColor);
    CGContextStrokeEllipseInRect(ctx, layer.bounds);
    */
    
//    CGRect bounds = CGContextGetClipBoundingBox(ctx);
//    NSInteger x =floor(bounds.origin.x / layer.tileSize.width);
//    NSInteger y =floor(bounds.origin.y /layer.tileSize.height);
    
//    NSString *imageName =[NSString stringWithFormat:@"a.png"];
//    NSString *path =[[NSBundle mainBundle]pathForResource:imageName ofType:@"png"];
    NSLog(@"ddddda");
//    UIImage *tileImage =[UIImage imageNamed:@"a"];
//    
//    UIGraphicsPushContext(ctx);
//    [tileImage drawInRect:bounds];
//    UIGraphicsPopContext();
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
