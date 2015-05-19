//
//  ReflectionView.m
//  CALayer
//
//  Created by Dee on 15/5/5.
//  Copyright (c) 2015年 zjsruxxxy7. All rights reserved.
//

#import "ReflectionView.h"

@implementation ReflectionView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
+(Class)layerClass
{
    return  [CAReplicatorLayer class];

}
-(void)setUp
{
    CAReplicatorLayer *layer =(CAReplicatorLayer *)self.layer;
    layer.instanceCount = 2;
    CATransform3D transform = CATransform3DIdentity;
    CGFloat verticaloffset =self.bounds.size.height;
    transform =CATransform3DTranslate(transform, 0, verticaloffset, 0);
    transform =CATransform3DScale(transform, 1, -1, 0);
    layer.instanceTransform = transform;
    layer.instanceAlphaOffset  = -.6;
    
    
    
}
-(instancetype)initWithFrame:(CGRect)frame
{
    if (self =[super initWithFrame:frame]) {
        [self setUp];
        NSLog(@"a");
    }
    return self;
    
    
    
}
-(void)awakeFromNib
{
    
    NSLog(@"b");
    [self setUp];
}

@end
