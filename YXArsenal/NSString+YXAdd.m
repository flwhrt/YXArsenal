//
//  NSString+YXAdd.m
//  YXArsenalTests
//
//  Created by flwhrt on 2018/10/29.
//  Copyright © 2018年 flwhrt. All rights reserved.
//

#import "NSString+YXAdd.h"

@implementation NSString (YXAdd)

+ (BOOL)isEmpty:(NSString *)aString
{
    return ![aString isNotEmpty];
}

+ (BOOL)isBlank:(NSString *)aString
{
    return ![aString isNotBlank];
}

- (BOOL)isNotEmpty
{
    return self.length > 0;
}

- (BOOL)isNotBlank
{
    NSString *aString = [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return [aString isNotEmpty];
}

- (BOOL)match:(NSString *)regex
{
    NSRange r = [self rangeOfString:[NSString stringWithFormat:@"^%@$", regex] options:NSRegularExpressionSearch];
    return r.location != NSNotFound;
}

@end
