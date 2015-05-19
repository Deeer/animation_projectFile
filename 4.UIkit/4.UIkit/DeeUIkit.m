//
//  DeeUIkit.m
//  4.UIkit
//
//  Created by Dee on 15/4/25.
//  Copyright (c) 2015年 zjsruxxxy7. All rights reserved.
//

#import "DeeUIkit.h"

@implementation DeeUIkit


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
 
    UIImage *image =[UIImage imageNamed:@"text.jpeg"];

    //[image drawAtPoint:CGPointZero];//绘制在指定区域
    UIRectClip(CGRectMake(0, 0, 100, 100));//设置裁剪区域，超出部分不显示
  
    [image drawAsPatternInRect:CGRectMake(0, 0, 250 ,250)];//平铺的效果
    
    
    
}
-(void)draw
{
    
    NSString *text =@"hellow Dee";
    CGRect textFrame = CGRectMake(0, 0, 100, 100);
    
    
    NSDictionary *dict =@{NSFontAttributeName:[UIFont systemFontOfSize:30],NSForegroundColorAttributeName:[UIColor redColor],NSStrokeWidthAttributeName:@2};
    UIRectFill(textFrame);
    
    //    [text drawInRect:textFrame withAttributes:dict];//会自动换行
    
    
    [text drawAtPoint:CGPointZero withAttributes:dict];//不会自动换行
    
}

@end
