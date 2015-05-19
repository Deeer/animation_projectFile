//
//  HMView.m
//  11.画板
//
//  Created by Dee on 15/4/27.
//  Copyright (c) 2015年 zjsruxxxy7. All rights reserved.
//

#import "HMView.h"
#import "deePaintPath.h"
@interface HMView ()

@property (nonatomic,strong)UIBezierPath *path;
@property (nonatomic,strong)NSMutableArray *arr;

@end

@implementation HMView

-(NSMutableArray *)arr
{
    
    
    if (_arr == nil) {
        _arr = [NSMutableArray array];
        
    }
    return _arr;
}


-(CGPoint  )pointWithTouches:(NSSet *)touches
{
    UITouch *touch = [touches anyObject];
    return [touch locationInView:self];
    
    
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    CGPoint pos =[self pointWithTouches:touches];
    deePaintPath *path = [deePaintPath paintPathWithLineWidth:self.width color:self.color startPoint:pos];
    
    _path =path;
    [self.arr addObject:path];

    
}
-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    CGPoint pos = [self pointWithTouches:touches];
    [_path addLineToPoint:pos];
    
    
    [self setNeedsDisplay];
}
-(void)awakeFromNib
{
    
    _width = 2;
    
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    
    if (self.arr.count == 0) {
        return;
    }
    
    // Drawing code
    for (deePaintPath*path  in _arr) {
        
        if([path isKindOfClass:[UIImage class]])
        {
            UIImage *image =(UIImage*)path;
            [image drawAtPoint:CGPointZero];
        }else{
        
        [path.color set];
            [path stroke];}
        
    }
    
 

}
-(void)clearScreen
{
    
    
    [self.arr removeAllObjects];
    [self setNeedsDisplay];
}
-(void)undo
{
    [self.arr removeLastObject];
    [self setNeedsDisplay];
    
}

-(void)setImage:(UIImage *)image
{
    
    _image =image;
    
    [self.arr addObject:image];
    
    [self setNeedsDisplay];
    
}

@end
