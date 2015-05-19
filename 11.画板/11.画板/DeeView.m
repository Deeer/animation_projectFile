//
//  DeeView.m
//  11.画板
//
//  Created by Dee on 15/4/26.
//  Copyright (c) 2015年 zjsruxxxy7. All rights reserved.
//

#import "DeeView.h"
@interface DeeView()
@property (nonatomic,assign)CGPoint  distacne;
@end
@implementation DeeView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
-(CGPoint)pointWithTouches:(NSSet *)touches
{
    UITouch *touch = [touches anyObject];
    return  [touch locationInView:self];
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    self.distacne = [self pointWithTouches:touches];
    
    
}
-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    self.distacne = [self pointWithTouches:touches];
    [self setNeedsDisplay];
}
-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    self.distacne =CGPointMake(0, 30);
    [self setNeedsDisplay];
}
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    CGFloat yOffset = 30.0;
    CGFloat width  = CGRectGetWidth(rect);
    CGFloat height = CGRectGetHeight(rect);
    
    
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(.0, yOffset)];
    CGPoint controlPoint =self.distacne;
    [path addQuadCurveToPoint:CGPointMake(width, yOffset) controlPoint:controlPoint];
    
    [path addLineToPoint:CGPointMake(width, height)];
    [path addLineToPoint:CGPointMake(.0, height)];
    [path closePath];
    
    
    
    CGContextRef context = UIGraphicsGetCurrentContext() ;
    CGContextAddPath(context, path.CGPath);
    [[UIColor orangeColor]set];
    CGContextFillPath(context);
    
    
}

@end
