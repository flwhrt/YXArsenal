//
//  YXb.m
//  YXArsenal
//
//  Created by flwhrt on 2018/11/1.
//  Copyright © 2018年 flwhrt. All rights reserved.
//


#import "UIColor+YXAdd.h"

void hexToDec(NSString *hexString, unsigned int *d)
{
    NSScanner *scanner = [NSScanner scannerWithString:hexString];
    [scanner scanHexInt:d];
}

@implementation UIColor (YXAdd)

+ (instancetype)colorWithHexString:(NSString *)hexString
{
    u_int red, green, blue;
    
    if ([hexString hasPrefix:@"#"])
        hexString = [hexString substringFromIndex:1];
    
    hexToDec([hexString substringWithRange:NSMakeRange(0, 2)], &red);
    hexToDec([hexString substringWithRange:NSMakeRange(2, 2)], &green);
    hexToDec([hexString substringWithRange:NSMakeRange(4, 2)], &blue);
    return [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:1];
}

@end
