//
//  DeeBarView.m
//  
//
//  Created by Dee on 15/4/25.
//
//

#import "DeeBarView.h"
#import "UIColor+randomColour.h"
@implementation DeeBarView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    NSArray * data  = @[@25,@25,@50];
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    int count =(int) data.count;
    CGFloat width = rect.size.width/(2*count-1);
    CGFloat height= 0;
    CGFloat x = 0;
    CGFloat y = 0;
    CGFloat viewH =rect.size.height;
    
    
    for (int  i ; i< count; i++) {
        height =viewH * [data[i] intValue]/100.0 ;
        x = 2*width*i;
        y = viewH -height;
        UIBezierPath *path = [UIBezierPath bezierPathWithRect:CGRectMake(x, y, width, height)];
        
        [[UIColor randomColor] set];
        CGContextAddPath(context, path.CGPath);
        CGContextFillPath(context);
        
        
        
    }
    
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self setNeedsDisplay];
}


@end
