//
//  DeeProgressView.m
//  DeeDownloadView
//
//  Created by Dee on 15/4/24.
//  Copyright (c) 2015年 zjsruxxxy7. All rights reserved.
//

#import "DeeProgressView.h"


@interface DeeProgressView ()
@property(nonatomic,weak)UILabel *lable;

@end
@implementation DeeProgressView
-(UILabel *)lable
{
    
    if (_lable==nil) {
        UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(30, 30, 100, 100)];
        label.textAlignment = NSTextAlignmentCenter;
        [self addSubview:label];
        _lable =label;
    }
    return _lable;
    
}
-(void)setProgress:(CGFloat)progress
{
    _progress = progress;
    
    self.lable.text =[NSString stringWithFormat:@"%.2f%%",progress*100];
    
    
    //在view上做一个重绘的标记，当下次屏幕刷新时，就会调用draw方法
    [self setNeedsDisplay];
}




// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
//当视图显示的时候会调用，默认只会调用一次
- (void)drawRect:(CGRect)rect {
    // Drawing code
    CGContextRef context =UIGraphicsGetCurrentContext();
    CGPoint center = CGPointMake(80, 80);
    CGFloat radius =50;
    CGFloat start = -M_PI_2;
    CGFloat end =-M_PI_2 +_progress *M_PI*2;
    
    
    UIBezierPath *path =[UIBezierPath bezierPathWithArcCenter:center radius:radius startAngle:start endAngle:end clockwise:YES];
    
    CGContextAddPath(context, path.CGPath);
    CGContextStrokePath(context);
    NSLog(@"asd");
}


@end
