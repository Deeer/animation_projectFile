//
//  DeePieView.m
//  2.饼图
//
//  Created by Dee on 15/4/25.
//  Copyright (c) 2015年 zjsruxxxy7. All rights reserved.
//

#import "DeePieView.h"
#import "UIColor+randomColour.h"
@interface DeePieView ()


@end



@implementation DeePieView



// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {

    _percentArray = @[@25,@25,@50];
    CGPoint center = CGPointMake(125, 125);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGFloat radius =120;
    CGFloat angle = 0;
    CGFloat start = 0;
    CGFloat end  = 0;

    
    for (NSNumber *number in self.percentArray) {

        start = end;
        angle = number.intValue/100.0*M_PI*2;
        end = start + angle;
        UIBezierPath  * path  = [UIBezierPath bezierPathWithArcCenter:center radius:radius startAngle:start endAngle:end clockwise:YES];
        [path addLineToPoint:center];
        
        [[UIColor randomColor] set];
        CGContextAddPath(context, path.CGPath);
        CGContextFillPath(context);
        
        
    }
    
    
    
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    
    [self setNeedsDisplay];// 会调用drawRect方法重新绘制
    
    
}
-(void)draw
{
    NSArray  *data=@[@25,@25,@50];
    
    CGContextRef text = UIGraphicsGetCurrentContext();
    
    CGPoint center = CGPointMake(100, 100);
    CGFloat radius = 80;
    CGFloat start = 0;
    CGFloat end = 0;
    CGFloat angle = 0;
    angle =25/100.0 * M_PI*2;
    end = start + angle;
    UIBezierPath * path =[UIBezierPath bezierPathWithArcCenter:center radius:radius startAngle:start endAngle:end clockwise:YES];
    [path addLineToPoint:CGPointMake(50, 50)];
    CGContextAddPath(text, path.CGPath);
    CGContextFillPath(text);

    
    
}

@end
