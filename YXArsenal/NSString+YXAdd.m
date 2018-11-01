//
//  NSString+YXAdd.m
//  YXArsenalTests
//
//  Created by flwhrt on 2018/10/29.
//  Copyright © 2018年 flwhrt. All rights reserved.
//

#import "NSString+YXAdd.h"

@implementation NSString (YXAdd)

- (BOOL)isEmpty
{
    return self == nil || self.length == 0;
}

- (BOOL)isNotEmpty
{
    return ![self isEmpty];
}

- (BOOL)isBlank
{

    return [[self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] isEmpty];
}

- (BOOL)isNotBlank
{
    return ![self isBlank];
}

@end
