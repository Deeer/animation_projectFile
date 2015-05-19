//
//  deeHandImageView.h
//  11.画板
//
//  Created by Dee on 15/4/28.
//  Copyright (c) 2015年 zjsruxxxy7. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^deeHandImageViewBlock)(UIImage*image);

@interface deeHandImageView : UIView

@property (nonatomic,copy)deeHandImageViewBlock block;
@property (nonatomic,strong) UIImage *image;
@end
