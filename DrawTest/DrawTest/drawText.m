//
//  drawText.m
//  DrawTest
//
//  Created by Dee on 15/4/27.
//  Copyright (c) 2015年 zjsruxxxy7. All rights reserved.
//

#import "drawText.h"
#import "MyLayerDelegate.h"

@interface drawText()
{
    MyLayerDelegate *_layerDelegate;
}


@end

@implementation drawText


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    drawText *myView = [[drawText alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
    CALayer *layer = [ CALayer layer];
    _layerDelegate =[[ MyLayerDelegate alloc]init];
    layer.delegate = _layerDelegate;
    [myView.layer addSublayer:layer];
    [myView setNeedsDisplay];
    
    
    
    
}

-(void)drawLayer:(CALayer *)layer inContext:(CGContextRef)ctx
{
    
}
-(void)way1
{
    
    UIBezierPath * p = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, 100, 100) ];
    [[UIColor blueColor] setFill];
    [p fill];

}

-(void)way2
{
    
    CGContextRef cont = UIGraphicsGetCurrentContext();
    CGContextAddEllipseInRect(cont, CGRectMake(0, 0, 100, 100));
    CGContextSetFillColorWithColor(cont, [UIColor orangeColor].CGColor);
    CGContextFillPath(cont);

}



@end
