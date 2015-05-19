//
//  ViewController.m
//  14.时钟
//
//  Created by Dee on 15/4/28.
//  Copyright (c) 2015年 zjsruxxxy7. All rights reserved.
//

#import "ViewController.h"
#define angle2randian(x) ((x)/180.0*M_PI)
#define perSecondA 6
#define perMinuteA 6
#define perHourA 30
#define perMinuteHourA 0.5
@interface ViewController()
{
    CALayer *_second;
    CALayer *_minute;
    CALayer *_hour;
}
@property (weak, nonatomic) IBOutlet UIImageView *clockView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self addSecond];
    [self addMinute];
    
    [self addHour];
    
    
    [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(update) userInfo:nil repeats:YES];
    
    
    [self update];
    
}
-(void)addHour
{
    CGFloat imageW =_clockView.bounds.size.width;
    CGFloat imageH =_clockView.bounds.size.height;
    
    
    CALayer* hour = [CALayer layer];
    
    hour.anchorPoint= CGPointMake(.5, 1);
    
    hour.position = CGPointMake(imageW*.5+1, imageH*.5);
    
    hour.bounds =CGRectMake(0, 0, 4, imageH*.5 -50);
    
    hour.backgroundColor =[UIColor blackColor].CGColor;
    
    hour.cornerRadius =4;
    _hour =hour;
    
    [_clockView.layer addSublayer:_hour];
    

    
    
}

-(void)addMinute
{
    
    CGFloat imageW =_clockView.bounds.size.width;
    CGFloat imageH =_clockView.bounds.size.height;
    
    
    CALayer* minute = [CALayer layer];
    
    minute.anchorPoint= CGPointMake(.5, 1);
    
    minute.position = CGPointMake(imageW*.5+1, imageH*.5);
    
    minute.bounds =CGRectMake(0, 0, 2, imageH*.5 -30);
    
    minute.backgroundColor =[UIColor blueColor].CGColor;
    
    _minute =minute;
    
    [_clockView.layer addSublayer:minute];
    
    
}
-(void)addSecond
{
    
    
    CGFloat imageW =_clockView.bounds.size.width;
    CGFloat imageH =_clockView.bounds.size.height;
    
    
    CALayer* second = [CALayer layer];
    
    second.anchorPoint= CGPointMake(.5, 1);
    
    second.position = CGPointMake(imageW*.5+1, imageH*.5);
    
    second.bounds =CGRectMake(0, 0, 1, imageH*.5 -20);
    
    second.backgroundColor =[UIColor redColor].CGColor;
    
    _second =second;
    
    [_clockView.layer addSublayer:second];
    
    
    
   
}

-(void)update
{
    
    NSCalendar * calender =[NSCalendar currentCalendar];
    //获取日期组件
    NSDateComponents * compodent = [calender components:NSCalendarUnitSecond|NSCalendarUnitMinute|NSCalendarUnitHour fromDate:[NSDate date]];
    
    //获取秒数
    CGFloat sec = compodent.second;
    CGFloat secondA = sec *perSecondA;
    _second.transform = CATransform3DMakeRotation(angle2randian(secondA), 0, 0, 1);
    
    CGFloat minute =compodent.minute;
    CGFloat minuteA =minute*perMinuteA;
    _minute.transform = CATransform3DMakeRotation(angle2randian(minuteA), 0, 0, 1);
    
    
    CGFloat hour =compodent.hour;
    CGFloat hourA =hour*perHourA;
    hourA += minute*perMinuteHourA;
    _hour.transform =CATransform3DMakeRotation(angle2randian(hourA), 0, 0, 1);
//    [_second setValue:@(angle2randian(secondA)) forKey:@"transform.rotation"];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
