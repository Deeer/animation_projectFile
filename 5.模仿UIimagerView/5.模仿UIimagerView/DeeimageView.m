//
//  DeeimageView.m
//  5.模仿UIimagerView
//
//  Created by Dee on 15/4/25.
//  Copyright (c) 2015年 zjsruxxxy7. All rights reserved.
//

#import "DeeimageView.h"

@implementation DeeimageView




// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
 
    [_image drawInRect:rect];
    NSLog(@"b");
    
}
-(void)awakeFromNib//只调用一次，xib加载完就调用
{
    
}

@end
