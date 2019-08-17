//
//  UIButton+YXAdd.m
//  YXArsenal
//
//  Created by Apple on 2019/8/15.
//  Copyright © 2019 flwhrt. All rights reserved.
//

#import "UIButton+YXAdd.h"

@implementation UIButton (YXAdd)


- (void)imageUp {
    CGFloat labelWidth = self.titleLabel.intrinsicContentSize.width; //注意不能直接使用titleLabel.frame.size.width,原因为有时候获取到0值
    CGFloat imageWidth = self.imageView.intrinsicContentSize.width;
    
    CGFloat space = 0; //定义两个元素交换后的间距
    
    CGFloat labelHeight = self.titleLabel.intrinsicContentSize.height; //注意不能直接使用titleLabel.frame.size.width,原因为有时候获取到0值
    CGFloat imageHeight = self.imageView.intrinsicContentSize.height;
    
    self.titleEdgeInsets = UIEdgeInsetsMake(imageHeight/2 + space/2, -imageWidth/2, -imageHeight/2 - space/2, imageWidth/2);
    self.imageEdgeInsets = UIEdgeInsetsMake(-labelHeight/2 - space/2, labelWidth/2, labelHeight/2 + space/2, -labelWidth/2);

}

@end
