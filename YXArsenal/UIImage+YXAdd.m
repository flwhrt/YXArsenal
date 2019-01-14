//
//  UIImage+YXAdd.m
//  YXArsenal
//
//  Created by flwhrt on 2018/11/1.
//  Copyright © 2018年 flwhrt. All rights reserved.
//


#import "UIImage+YXAdd.h"

@implementation UIImage (YXAdd)

+ (UIImage *)imageWithColor:(UIColor *)color {
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

@end
